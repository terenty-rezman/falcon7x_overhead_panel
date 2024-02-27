import sys
import array
from collections import OrderedDict

from PySide6.QtQuick import QQuickView, QQuickItem
from PySide6.QtGui import QGuiApplication
from PySide6.QtCore import QUrl, QObject, Slot, Property, SLOT, SIGNAL, QByteArray
from PySide6.QtNetwork import QUdpSocket, QHostAddress
from PySide6.QtQml import QQmlContext

FALCON7X_SEND_STATE_ADDRRESS = QHostAddress.LocalHost
FALCON7X_SEND_STATE_PORT = 1998

FALCON7X_RECEIVE_STATE_PORT = 1999


send_buttons_idx = OrderedDict(
    firebutton_1=0,
    firebutton_2=1,
    firebutton_3=2,
    apu_disch=3,
    firerearcomp_button=4,
    firebagcomp_button=5,
    disch_11=6,
    disch_12=7,
    disch_21=8,
    disch_22=9,
    disch_31=10,
    disch_32=11,
    airbrake_auto=12,
    fcs_engage_norm=13,
    fcs_engage_stby=14,
    fcs_steering=15,
    apu_master=16,
    apu_start_stop=17,
    shutoff_a1=18,
    shutoff_a2=19,
    backup_pump=20,
    shutoff_b2=21,
    shutoff_b3=22,
    shutoff_c2=23,
    galley_master=24,
    lh_master=25,
    lh_init=26,
    bus_tie=27,
    rh_init=28,
    rh_master=29,
    cabin_master=30,
    ext_power=31,
    gen1=32,
    lh_isol=33,
    rat_reset=34,
    rh_isol=35,
    gen2=36,
    gen3=37,
    bat1=38,
    bat2=39,
    aft_temp=40,
    fwd_temp=41,
    fwd_temp_push=42,
    crew_temp=43,
    crew_temp_push=44,
    crew_ratio=45,
    gnd_vent=46,
    pack=47,
    bag_isol=48,
    xbleed_ecs=49,
)

send_buttons_state = QByteArray() 
send_buttons_state.resize(len(send_buttons_idx), '\0')

receive_panel_items = OrderedDict(
    firebutton_1=0,
    fireindicator_1=1,
    disch_11=2,
    disch_12=3,
    apu_disch=4,
    fire_apu_indicator=5,
    fire_apu_closed_indicator=6,
    firebutton_2=7,
    fireindicator_2=8,
    disch_21=9,
    disch_22=10,
    firebutton_3=11,
    fireindicator_3=12,
    disch_31=13,
    disch_32=14,
    firerearcomp_button=16,
    firerearcomp_indicator=17,
    firebagcomp_button=18,
    firebagcomp_indicator=19,
    airbrake_auto=20,
    fcs_engage_norm=21,
    fcs_engage_stby=22,
    fcs_steering=23,
    apu_master=24,
    apu_start_stop=25,
    shutoff_a1=26,
    shutoff_a2=27,
    backup_pump=28,
    shutoff_b2=29,
    shutoff_b3=30,
    shutoff_c2=31,
    galley_master=32,
    lh_master=33,
    lh_init=34,
    bus_tie=35,
    rh_init=36,
    rh_master=37,
    cabin_master=38,
    ext_power=39,
    gen1=40,
    lh_isol=41,
    rat_reset=42,
    rh_isol=43,
    gen2=44,
    gen3=45,
    bat1=46,
    bat2=47,
    aft_temp=48,
    fwd_temp=49,
    fwd_temp_push=50,
    crew_temp=51,
    crew_temp_push=52,
    crew_ration=53,
    gnd_vent=54,
    bag_isol=55,
    xbleed_ecs=56,
)

special_map = {
    "aft_temp": "aft_temp_disp",
    "fwd_temp": "fwd_temp_disp",
    "crew_temp": "crew_temp_disp",
}

from special_logic import *

special_logic = {
    "fwd_temp_push": fwd_temp_push_logic,
    "crew_temp_push": crew_temp_push_logic,
}


class Backend(QObject):
    @Property(int)
    def a(self):
        return 1

    def init_sockets(self):
        self.send_socket = QUdpSocket(self)
        self.connect(
            self.send_socket, SIGNAL('readyRead()'),
            self, SLOT('ignore_incoming_data()')
        )

        self.receive_socket = QUdpSocket(self)
        self.receive_socket.bind(QHostAddress("0.0.0.0"), FALCON7X_RECEIVE_STATE_PORT)
        self.connect(
            self.receive_socket, SIGNAL('readyRead()'),
            self, SLOT('read_incoming_state()')
        )

    def ignore_incoming_data(self):
        # ignore incoming data
        # state data comes on different socket
        while self.send_socket.hasPendingDatagrams():
            datagram = QByteArray()
            datagram.resize(self.send_socket.pendingDatagramSize())

            (data, sender, senderPort) = self.send_socket.readDatagram(len(datagram))

    def read_incoming_state(self):
        datagram = QByteArray()
        while self.receive_socket.hasPendingDatagrams():
            datagram.resize(self.receive_socket.pendingDatagramSize())
            (data, sender, senderPort) = self.receive_socket.readDatagram(len(datagram))

        for i, item_id in enumerate(receive_panel_items.keys()):
            state = int.from_bytes(data[i], "little")

            # if special logic case
            if item_id in special_logic:
                logic = special_logic[item_id]
                logic(view, item_id, state)
                continue

            # special map cases
            if item_id in special_map:
                item_id = special_map[item_id]

            item = view.rootObject().findChild(QQuickItem, item_id)

            # default case
            if item:
                item.setProperty("state", state)


    def __init__(self):
        super().__init__()
        self.init_sockets()

    @Slot(QObject, result=None)
    def on_button_press(self, button):
        idx = send_buttons_idx[button.objectName()]
        send_buttons_state[idx] = b'\x01'
        self.send_socket.writeDatagram(send_buttons_state, FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)

    @Slot(QObject, result=None)
    def on_button_release(self, button):
        idx = send_buttons_idx[button.objectName()]
        send_buttons_state[idx] = b'\x00'
        self.send_socket.writeDatagram(send_buttons_state, FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)

    @Slot(QObject, result=None)
    def on_rotation(self, button):
        rotation = button.property("state")
        idx = send_buttons_idx[button.objectName()]
        send_buttons_state[idx] = rotation.to_bytes(1, 'little')
        self.send_socket.writeDatagram(send_buttons_state, FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)


app = QGuiApplication(sys.argv)
url = QUrl("components/overhead.qml")

view = QQuickView()
view.setSource(url)

backend = Backend()
view.rootContext().setContextProperty("backend", backend)

view.setTitle("overhead panel - falcon7x")
view.setWidth(1000)
view.setHeight(1000)
view.show()
view.setMaximumWidth(1000)
view.setMaximumHeight(1000)

app.exec()

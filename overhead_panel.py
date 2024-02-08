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
    firerearcomp=4,
    firebagcomp=5,
    disch_11=6,
    disch_12=7,
    disch_21=8,
    disch_22=9,
    disch_31=10,
    disch_32=11
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
    disch_32=14
)


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
            item = view.rootObject().findChild(QQuickItem, item_id)
            if item:
                if item_id.startswith("disch"):
                    if state == 1: state = 3 
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


app = QGuiApplication(sys.argv)
url = QUrl("components/overhead.qml")

view = QQuickView()
view.setSource(url)

backend = Backend()
view.rootContext().setContextProperty("backend", backend)

view.show()

app.exec()

import sys
import array
from collections import OrderedDict

from PySide6.QtQuick import QQuickView, QQuickItem
from PySide6.QtGui import QGuiApplication
from PySide6.QtCore import QUrl, QObject, Slot, Property, SLOT, SIGNAL, QByteArray, QTimer
from PySide6.QtNetwork import QUdpSocket, QHostAddress
from PySide6.QtQml import QQmlContext

import view_helper

FALCON7X_SEND_STATE_ADDRRESS = QHostAddress.LocalHost
FALCON7X_SEND_STATE_PORT = 1998

FALCON7X_RECEIVE_STATE_PORT = 1999

BUTTON_PACKET_SIZE = 'H'


send_panel_items = [
    "firebutton_1",
    "firebutton_2",
    "firebutton_3",
    "apu_disch",
    "firerearcomp_button",
    "firebagcomp_button",
    "disch_11",
    "disch_12",
    "disch_21",
    "disch_22",
    "disch_31",
    "disch_32",
    "airbrake_auto",
    "fcs_engage_norm",
    "fcs_engage_stby",
    "fcs_steering",
    "eng_1",
    "eng_2",
    "eng_3",
    "apu_master",
    "apu_start_stop",
    "shutoff_a1",
    "shutoff_a2",
    "backup_pump",
    "shutoff_b2",
    "shutoff_b3",
    "shutoff_c2",
    "galley_master",
    "lh_master",
    "lh_init",
    "bus_tie",
    "rh_init",
    "rh_master",
    "cabin_master",
    "ext_power",
    "gen1",
    "lh_isol",
    "rat_reset",
    "rh_isol",
    "gen2",
    "gen3",
    "bat1",
    "bat2",
    "aft_temp",
    "fwd_temp",
    "fwd_temp_push",
    "crew_temp",
    "crew_temp_push",
    "crew_ratio",
    "gnd_vent",
    "pack",
    "bag_isol",
    "xbleed_ecs",
    "boost1",
    "xtk_1",
    "xtk_2",
    "boost3",
    "xtk_3",
    "backup_13", 
    "xtk_4",
    "xtk_5",
    "boost2",
    "xtk_6",
    "xbp_12",
    "xbp_13",
    "xbp_23",
    "wings",
    "ice_brake",
    "ice_eng1",
    "ice_eng2",
    "ice_eng3",
    "bleed1",
    "bleed12",
    "bleed2",
    "bleed13",
    "bleed_apu",
    "bleed3",
    "dump",
    "bag_vent",
    "cabin_alt",
    "pressu_man",
    "probe_12",
    "probe_3",
    "probe_4",
    "windshield_lh",
    "windshield_rh",
    "windshield_backup",
    "pax_oxygen",
    "rain_rplint_lh",
    "el_nav",
    "el_anticol",
    "el_wing",
    "el_landing_lh",
    "el_landing_rh",
    "el_taxi",
    "cl_overhead",
    "cl_panel",
    "cl_dim",
    "cl_shield",
    "il_emerge_lights",
    "il_fasten",
    "il_smoking",
    "il_cabin",
    "rain_rplint_rh",
    "master_warning_lh",
    "master_caution_lh",
    "sil_aural_alarm_lh",
    "fms_msg_lh",
    "event_lh",
    "event_rh",
    "fms_msg_rh",
    "sil_aural_alarm_rh",
    "master_caution_rh",
    "master_warning_rh",
    "swap_lh",
    "vhf_control_lh",
    "baro_rot_lh",
    "baro_push_lh",
    "fdtd_lh",
    "fp_speed_is_mach_push",
    "fp_speed_kts_mach",
]

send_panel_items_idx = {name: i for i, name in enumerate(send_panel_items)}

send_buttons_state = array.array(BUTTON_PACKET_SIZE, [0]*len(send_panel_items_idx))

receive_panel_items = [
    "firebutton_1",
    "fireindicator_1",
    "disch_11",
    "disch_12",
    "apu_disch",
    "fire_apu_indicator",
    "fire_apu_closed_indicator",
    "firebutton_2",
    "fireindicator_2",
    "disch_21",
    "disch_22",
    "firebutton_3",
    "fireindicator_3",
    "disch_31",
    "disch_32",
    "firerearcomp_button",
    "firerearcomp_indicator",
    "firebagcomp_button",
    "firebagcomp_indicator",
    "airbrake_auto",
    "fcs_engage_norm",
    "fcs_engage_stby",
    "fcs_steering",
    "apu_master",
    "apu_start_stop",
    "shutoff_a1",
    "shutoff_a2",
    "backup_pump",
    "shutoff_b2",
    "shutoff_b3",
    "shutoff_c2",
    "galley_master",
    "lh_master",
    "lh_init",
    "bus_tie",
    "rh_init",
    "rh_master",
    "cabin_master",
    "ext_power",
    "gen1",
    "lh_isol",
    "rat_reset",
    "rh_isol",
    "gen2",
    "gen3",
    "bat1",
    "bat2",
    "aft_temp",
    "fwd_temp",
    "fwd_temp_push",
    "crew_temp",
    "crew_temp_push",
    "crew_ratio",
    "gnd_vent",
    "bag_isol",
    "xbleed_ecs",
    "boost1",
    "xtk_1",
    "xtk_2",
    "boost3",
    "xtk_3",
    "backup_13",
    "xtk_4",
    "xtk_5",
    "boost2",
    "xtk_6",
    "xbp_12",
    "xbp_13",
    "xbp_23",
    "wings",
    "ice_brake",
    "ice_eng1",
    "ice_eng2",
    "ice_eng3",
    "bleed1",
    "bleed12",
    "bleed2",
    "bleed13",
    "bleed_apu",
    "bleed3",
    "dump",
    "bag_vent",
    "pressu_man",
    "probe_12",
    "probe_3",
    "probe_4",
    "windshield_lh",
    "windshield_rh",
    "windshield_backup",
    "el_nav",
    "el_anticol",
    "el_wing",
    "el_landing_lh",
    "el_landing_rh",
    "el_taxi",
    "il_emerge_lights",
    "il_fasten",
    "il_smoking",
    "il_cabin",
    "pty_lh",
    "master_warning_lh",
    "master_caution_lh",
    "fms_msg_lh",
    "event_lh",
    "event_rh",
    "fms_msg_rh",
    "master_caution_rh",
    "master_warning_rh",
    "pty_rh",
    "fdtd_lh",
    "fp_speed_is_mach_push",
    "fp_speed_kts_mach",
]

special_receive_map = {
    "aft_temp": "aft_temp_disp",
    "fwd_temp": "fwd_temp_disp",
    "crew_temp": "crew_temp_disp",
    "el_landing_lh": "el_landing_lh_ind",
    "el_landing_rh": "el_landing_rh_ind",
    "il_emerge_lights": "il_emerge_lights_ind",
    "master_warning_lh": "master_warning_lh_ind",
    "master_caution_lh": "master_caution_lh_ind",
    "master_warning_rh": "master_warning_rh_ind",
    "master_caution_rh": "master_caution_rh_ind",
}

from special_logic import *

special_logic = {
    "fwd_temp_push": fwd_temp_push_logic,
    "crew_temp_push": crew_temp_push_logic,
    "fp_speed_is_mach_push": fp_speed_is_mach_logic,
    "fp_speed_kts_mach": fp_speed_kts_mach_logic,
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

        timer = QTimer(self)
        timer.timeout.connect(self.send_buttons_state_udp)
        # timer.start(300)

    def send_buttons_state_udp(self):
        print("send")
        self.send_socket.writeDatagram(send_buttons_state, FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)

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

            data = array.array(BUTTON_PACKET_SIZE, bytes(data))

        for i, item_id in enumerate(receive_panel_items):
            state = data[i]

            # if special logic case
            if item_id in special_logic:
                logic = special_logic[item_id]
                logic(overhead_panel, item_id, state)
                continue

            # special map cases
            if item_id in special_receive_map:
                item_id = special_receive_map[item_id]

            item = view_helper.find_object(item_id)

            # default case
            if item:
                item.setProperty("state", state)


    def __init__(self):
        super().__init__()
        self.init_sockets()

    @Slot(QObject, result=None)
    def on_button_press(self, button):
        idx = send_panel_items_idx[button.objectName()]
        send_buttons_state[idx] = 1
        self.send_socket.writeDatagram(send_buttons_state.tobytes(), FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)

    @Slot(QObject, result=None)
    def on_button_release(self, button):
        idx = send_panel_items_idx[button.objectName()]
        send_buttons_state[idx] = 0
        self.send_socket.writeDatagram(send_buttons_state.tobytes(), FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)

    @Slot(QObject, result=None)
    def on_rotation(self, button):
        rotation = button.property("state")
        idx = send_panel_items_idx[button.objectName()]
        send_buttons_state[idx] = rotation
        self.send_socket.writeDatagram(send_buttons_state.tobytes(), FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)

    @Slot(QObject, int, result=None)
    def on_rotation_step(self, button, direction):
        idx = send_panel_items_idx[button.objectName()]
        send_buttons_state[idx] = direction
        self.send_socket.writeDatagram(send_buttons_state.tobytes(), FALCON7X_SEND_STATE_ADDRRESS, FALCON7X_SEND_STATE_PORT)


app = QGuiApplication(sys.argv)

url = QUrl("components/overhead.qml")
overhead_panel = QQuickView()
overhead_panel.setSource(url)
overhead_panel.setTitle("overhead panel - falcon7x")
overhead_panel.setWidth(1000)
overhead_panel.setHeight(1000)
# overhead_panel.show()
overhead_panel.setMaximumWidth(1000)
overhead_panel.setMaximumHeight(1000)

url = QUrl("components/front_panel.qml")
front_panel = QQuickView()
front_panel.setSource(url)
front_panel.setTitle("front panel - falcon7x")
front_panel.setWidth(1000)
front_panel.setHeight(1000)
front_panel.show()
front_panel.setMaximumWidth(1000)
front_panel.setMaximumHeight(277)

view_helper.all_views.append(overhead_panel)
view_helper.all_views.append(front_panel)

backend = Backend()
overhead_panel.rootContext().setContextProperty("backend", backend)
front_panel.rootContext().setContextProperty("backend", backend)

app.exec()

import sys
import array
from collections import OrderedDict

from PySide2.QtQuick import QQuickView
from PySide2.QtGui import QGuiApplication
from PySide2.QtCore import QUrl, QObject, Slot, Property, SLOT, SIGNAL, QByteArray
from PySide2.QtNetwork import QUdpSocket, QHostAddress
from PySide2.QtQml import QQmlContext

FALCON7X_CORE_ADDRESS = QHostAddress.LocalHost
FALCON7X_CORE_PORT = 1998


buttons_udp_idx = OrderedDict(
    firebutton_1=0,
    firebutton_2=1,
    firebutton_3=2,
    fireapu=3,
    firerearcomp=4,
    firebagcomp=5,
    disch_11=6,
    disch_12=7,
    disch_21=8,
    disch_22=9,
    disch_31=10,
    disch_32=11
)

buttons_udp_state = QByteArray() 
buttons_udp_state.resize(len(buttons_udp_idx))


class Backend(QObject):
    # @Property(int)
    # def a(self):
    #     return 1

    def init_socket(self):
        self.udp_socket = QUdpSocket(self)

        self.connect(
            self.udp_socket, SIGNAL('readyRead()'),
            self, SLOT('readPendingDatagrams()')
        )

    def readPendingDatagrams(self):
        while self.udpSocket.hasPendingDatagrams():
            datagram = QByteArray()
            datagram.resize(self.udpSocket.pendingDatagramSize())

            (sender, senderPort) = self.udp_socket.readDatagram(datagram.data(), datagram.size())


    def __init__(self):
        super().__init__()
        self.init_socket()

    @Slot(QObject, result=None)
    def on_button_press(self, button):
        idx = buttons_udp_idx[button.objectName()]
        buttons_udp_state[idx] = b'\x01'
        self.udp_socket.writeDatagram(buttons_udp_state, FALCON7X_CORE_ADDRESS, FALCON7X_CORE_PORT)

    @Slot(QObject, result=None)
    def on_button_release(self, button):
        idx = buttons_udp_idx[button.objectName()]
        buttons_udp_state[idx] = b'\x00'
        self.udp_socket.writeDatagram(buttons_udp_state, FALCON7X_CORE_ADDRESS, FALCON7X_CORE_PORT)


app = QGuiApplication(sys.argv)
url = QUrl("components/overhead.qml")

view = QQuickView()
view.setSource(url)

backend = Backend()
view.rootContext().setContextProperty("backend", backend)

view.show()

app.exec_()

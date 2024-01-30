import sys

from PySide2.QtQuick import QQuickView
from PySide2.QtGui import QGuiApplication
from PySide2.QtCore import QUrl, QObject, Slot, Property
from PySide2.QtQml import QQmlContext


class Backend(QObject):
    # @Property(int)
    # def a(self):
    #     return 1

    def __init__(self):
        super().__init__()

    @Slot(QObject, result=None)
    def on_button_press(self, button):
        print(button.objectName())


app = QGuiApplication(sys.argv)
url = QUrl("components/overhead.qml")

view = QQuickView()
view.setSource(url)

backend = Backend()
view.rootContext().setContextProperty("backend", backend)

view.show()

app.exec_()

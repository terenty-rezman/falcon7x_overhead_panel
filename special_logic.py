
from PySide6.QtQuick import QQuickView, QQuickItem


def fwd_temp_push_logic(view: QQuickView, item_id: str, state: int):
    aft_temp = view.rootObject().findChild(QQuickItem, "aft_temp_disp")
    fwd_temp = view.rootObject().findChild(QQuickItem, "fwd_temp_disp")

    aft_temp.setProperty("visible", bool(state))
    fwd_temp.setProperty("visible", bool(state))

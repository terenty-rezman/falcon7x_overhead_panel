from PySide6.QtQuick import QQuickView, QQuickItem

import view_helper


def fwd_temp_push_logic(view: QQuickView, item_id: str, state: int):
    aft_temp = view_helper.find_object("aft_temp_disp")
    fwd_temp = view_helper.find_object("fwd_temp_disp")

    aft_temp.setProperty("visible", bool(state))
    fwd_temp.setProperty("visible", bool(state))


def crew_temp_push_logic(view: QQuickView, item_id: str, state: int):
    crew_temp_disp = view_helper.find_object("crew_temp_disp")
    crew_temp_disp.setProperty("visible", bool(state))

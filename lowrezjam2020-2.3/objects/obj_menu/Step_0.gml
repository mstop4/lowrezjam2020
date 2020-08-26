if (active) {
	var _confirm_input = ctrl_id.ctrl_pressed[CONTROLS.CONFIRM] || ctrl_id.ctrl_pressed[CONTROLS.SHOOT] || ctrl_id.ctrl_pressed[CONTROLS.DASH];
	
	if (_confirm_input) {
		if (script_exists(menu_items[menu_pos].on_confirm)) {
			script_execute(menu_items[menu_pos].on_confirm);
		}
	}
	
	if (ctrl_id.axis_pressed.y != 0) {
		menu_pos = wrap(menu_pos + ctrl_id.axis_pressed.y, 0, num_menu_items-1);
	}
	
	if (ctrl_id.axis_pressed.x != 0) {
		menu_items[menu_pos].selection = wrap(
			menu_items[menu_pos].selection + ctrl_id.axis_pressed.x,
			0,
			menu_items[menu_pos].max_selection-1
		);
		
		if (script_exists(menu_items[menu_pos].on_change)) {
			script_execute(menu_items[menu_pos].on_change);
		}
	}
}

menu_alpha.update();
if (active) {
	var _v_input = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	var _h_input = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
	var _confirm_input = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
	
	if (_confirm_input) {
		if (script_exists(menu_items[menu_pos].on_confirm)) {
			script_execute(menu_items[menu_pos].on_confirm);
		}
	}
	
	if (_v_input != 0) {
		menu_pos = wrap(menu_pos + _v_input, 0, num_menu_items-1);
	}
	
	if (_h_input != 0) {
		menu_items[menu_pos].selection = wrap(
			menu_items[menu_pos].selection + _h_input,
			0,
			menu_items[menu_pos].max_selection-1
		);
	}
}

menu_alpha.update();
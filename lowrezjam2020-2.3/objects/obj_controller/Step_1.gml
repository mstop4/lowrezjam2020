prev_stick_input.x = stick_input.x;
prev_stick_input.y = stick_input.y;

for (var i=CONTROLS.UP; i<CONTROLS.MAX; i++) {
	ctrl_held[i] = false;
	ctrl_pressed[i] = false;
	ctrl_released[i] = false;
}

	ctrl_any_pressed = false;

if (keyboard_enabled) {
	for (var i=CONTROLS.UP; i<CONTROLS.MAX; i++) {
		ctrl_held[i] = keyboard_check(keyboard_map[i]);
		ctrl_pressed[i] = keyboard_check_pressed(keyboard_map[i]);
		ctrl_released[i] = keyboard_check_released(keyboard_map[i]);
	}
	
	ctrl_any_pressed = keyboard_check_pressed(vk_anykey);
}

if (gamepad_enabled) {
	if (gamepad_stick_enabled) {
		stick_input.x = gamepad_axis_value(0, gp_axislh);
		stick_input.y = gamepad_axis_value(0, gp_axislv);
		
		if (abs(stick_input.x) < stick_deadzone) stick_input.x = 0;
		if (abs(stick_input.y) < stick_deadzone) stick_input.y = 0;
		
		if (gamepad_stick_to_dpad) {
			if (abs(stick_input.y) > stick_threshold) {
				if (stick_input.y < 0) { // Up
					if (stick_input.y <= -stick_threshold) {
						ctrl_held[CONTROLS.UP] = true;
						if (prev_stick_input.y > -stick_threshold) {
							ctrl_pressed[CONTROLS.UP] = true;
						}
					} else if (prev_stick_input.y <= -stick_threshold) {
						ctrl_released[CONTROLS.UP] = true;
					}
				} else if (stick_input.y > 0) { // Down
					if (stick_input.y >= stick_threshold) {
						ctrl_held[CONTROLS.DOWN] = true;
						if (prev_stick_input.y < stick_threshold) {
							ctrl_pressed[CONTROLS.DOWN] = true;
						}
					} else if (prev_stick_input.y > stick_threshold) {
						ctrl_released[CONTROLS.DOWN] = true;
					}
				} 
			}

			if (abs(stick_input.x) > stick_threshold) {
				if (stick_input.x < 0) { // Left
					if (stick_input.x <= -stick_threshold) {
						ctrl_held[CONTROLS.LEFT] = true;
						if (prev_stick_input.x > -stick_threshold) {
							ctrl_pressed[CONTROLS.LEFT] = true;
						}
					} else if (prev_stick_input.x <= -stick_threshold) {
						ctrl_released[CONTROLS.LEFT] = true;
					}
				} else if (stick_input.x > 0) { // Right
					if (stick_input.x >= stick_threshold) {
						ctrl_held[CONTROLS.RIGHT] = true;
						if (prev_stick_input.x < stick_threshold) {
							ctrl_pressed[CONTROLS.RIGHT] = true;
						}
					} else if (prev_stick_input.x > stick_threshold) {
						ctrl_released[CONTROLS.RIGHT] = true;
					}
				} 
			}
		}
	}
	
	for (var i=CONTROLS.UP; i<CONTROLS.MAX; i++) {
		ctrl_held[i] = gamepad_button_check(0, controller_map[i]) || ctrl_held[i];
		ctrl_pressed[i] = gamepad_button_check_pressed(0, controller_map[i]) || ctrl_pressed[i];
		ctrl_released[i] = gamepad_button_check_released(0, controller_map[i]) || ctrl_released[i];
	}
	
	for (var i=gp_face1; i<gp_axisrv; i++) {
    if (gamepad_button_check_pressed(0, i)) {
      ctrl_any_pressed = true;
      break;
    }
  }
}

axis_held.x = ctrl_held[CONTROLS.RIGHT] - ctrl_held[CONTROLS.LEFT]; 
axis_held.y = ctrl_held[CONTROLS.DOWN] - ctrl_held[CONTROLS.UP]; 
axis_pressed.x = ctrl_pressed[CONTROLS.RIGHT] - ctrl_pressed[CONTROLS.LEFT]; 
axis_pressed.y = ctrl_pressed[CONTROLS.DOWN] - ctrl_pressed[CONTROLS.UP];
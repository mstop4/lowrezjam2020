axis_held.x = 0;
axis_held.y = 0;
axis_pressed.x = 0;
axis_pressed.y = 0;
prev_stick_input.x = stick_input.x;
prev_stick_input.y = stick_input.y;
stick_input.x = 0;
stick_input.y = 0;

for (var i=CONTROLS.UP; i<=CONTROLS.CONFIRM; i++) {
	ctrl_held[i] = false;
	ctrl_pressed[i] = false;
	ctrl_release[i] = false;
}

if (keyboard_enabled) {
	for (var i=CONTROLS.UP; i<=CONTROLS.CONFIRM; i++) {
		ctrl_held[i] = keyboard_check(keyboard_map[i]);
		ctrl_pressed[i] = keyboard_check_pressed(keyboard_map[i]);
		ctrl_release[i] = keyboard_check_released(keyboard_map[i]);
	}
}

if (gamepad_enabled) {
	if (gamepad_stick_enabled) {
		stick_input.x = gamepad_axis_value(0, gp_axislh);
		stick_input.y = gamepad_axis_value(0, gp_axislv);
		
		if (abs(stick_input.x) < stick_deadzone) stick_input.x = 0;
		if (abs(stick_input.y) < stick_deadzone) stick_input.y = 0;
		
		if (gamepad_stick_to_dpad) {
			if (abs(stick_input.y) > stick_threshold) {
				axis_held.y += sign(stick_input.y);

				if (stick_input.y < 0) { // Up
					if (stick_input.y <= -stick_threshold) {
						ctrl_held[CONTROLS.UP] = true;
						if (prev_stick_input.y > -stick_threshold) {
							ctrl_pressed[CONTROLS.UP] = true;
						}
					} else if (prev_stick_input.y <= -stick_threshold) {
						ctrl_release[CONTROLS.UP] = true;
					}
				} else if (stick_input.y > 0) { // Down
					if (stick_input.y >= stick_threshold) {
						ctrl_held[CONTROLS.DOWN] = true;
						if (prev_stick_input.y < stick_threshold) {
							ctrl_pressed[CONTROLS.DOWN] = true;
						}
					} else if (prev_stick_input.y > stick_threshold) {
						ctrl_release[CONTROLS.DOWN] = true;
					}
				} 
			}

			if (abs(stick_input.x) > stick_threshold) {
				axis_held.x += sign(stick_input.x);

				if (stick_input.x < 0) { // Left
					if (stick_input.x <= -stick_threshold) {
						ctrl_held[CONTROLS.LEFT] = true;
						if (prev_stick_input.x > -stick_threshold) {
							ctrl_pressed[CONTROLS.LEFT] = true;
						}
					} else if (prev_stick_input.x <= -stick_threshold) {
						ctrl_release[CONTROLS.LEFT] = true;
					}
				} else if (stick_input.x > 0) { // Right
					if (stick_input.x >= stick_threshold) {
						ctrl_held[CONTROLS.RIGHT] = true;
						if (prev_stick_input.x < stick_threshold) {
							ctrl_pressed[CONTROLS.RIGHT] = true;
						}
					} else if (prev_stick_input.x > stick_threshold) {
						ctrl_release[CONTROLS.RIGHT] = true;
					}
				} 
			}
		}
	}
	
	for (var i=CONTROLS.UP; i<=CONTROLS.CONFIRM; i++) {
		ctrl_held[i] = gamepad_button_check(0, controller_map[i]) || ctrl_held[i];
		ctrl_pressed[i] = gamepad_button_check_pressed(0, controller_map[i]) || ctrl_pressed[i];
		ctrl_release[i] = gamepad_button_check_released(0, controller_map[i]) || ctrl_release[i];
	}
}

axis_held.x += ctrl_held[CONTROLS.RIGHT] - ctrl_held[CONTROLS.LEFT]; 
axis_held.y += ctrl_held[CONTROLS.DOWN] - ctrl_held[CONTROLS.UP]; 
axis_pressed.x += ctrl_pressed[CONTROLS.RIGHT] - ctrl_pressed[CONTROLS.LEFT]; 
axis_pressed.y += ctrl_pressed[CONTROLS.DOWN] - ctrl_pressed[CONTROLS.UP];
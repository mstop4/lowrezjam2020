keyboard_map[CONTROLS.UP] = vk_up;
keyboard_map[CONTROLS.DOWN] = vk_down;
keyboard_map[CONTROLS.LEFT] = vk_left;
keyboard_map[CONTROLS.RIGHT] = vk_right;
keyboard_map[CONTROLS.SHOOT] = ord("Z");
keyboard_map[CONTROLS.DASH] = ord("X");
keyboard_map[CONTROLS.CONFIRM] = vk_enter;
keyboard_map[CONTROLS.QUIT] = vk_escape;

controller_map[CONTROLS.UP] = gp_padu;
controller_map[CONTROLS.DOWN] = gp_padd;
controller_map[CONTROLS.LEFT] = gp_padl;
controller_map[CONTROLS.RIGHT] = gp_padr;
controller_map[CONTROLS.SHOOT] = gp_face3;
controller_map[CONTROLS.DASH] =  gp_face1;
controller_map[CONTROLS.CONFIRM] = gp_start;
controller_map[CONTROLS.QUIT] = gp_select;

for (var i=CONTROLS.UP; i<CONTROLS.MAX; i++) {
	ctrl_held[i] = false;
	ctrl_pressed[i] = false;
	ctrl_released[i] = false;
}

ctrl_any_pressed = false;
axis_held = new Vector2(0, 0);
axis_pressed = new Vector2(0, 0);
stick_input = new Vector2(0, 0);
prev_stick_input = new Vector2(0, 0);
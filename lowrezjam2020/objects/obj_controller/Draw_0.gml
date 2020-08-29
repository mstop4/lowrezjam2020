if (debug_draw) {
	draw_text(0, 0, string(prev_stick_input.x));
	draw_text(32, 0, string(stick_input.x));
	draw_text(0, 32, string(prev_stick_input.y));
	draw_text(32, 32, string(stick_input.y));
}
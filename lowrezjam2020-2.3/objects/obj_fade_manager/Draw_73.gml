if (fade_out_alpha > 0) {
	draw_set_colour(c_black);
	draw_set_alpha(fade_out_alpha);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
}
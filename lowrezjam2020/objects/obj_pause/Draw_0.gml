if (paused) {
	draw_surface(pause_surf, 0, 0);
	draw_set_colour(c_white);
	draw_set_font(obj_MCP.fnt_small);
	draw_set_halign(fa_center);
	draw_text(32, 16, "PAUSED");
}
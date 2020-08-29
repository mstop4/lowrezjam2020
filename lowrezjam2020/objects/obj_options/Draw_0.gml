draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_font(obj_MCP.fnt_small);

draw_set_alpha(title_alpha.v)
draw_text(96, 2, "OPTIONS");

draw_set_halign(fa_left);
if (music_item) {
	draw_text(96, options_menu.y + music_item.y_offset, music_item.selection == 1 ? "ON" : "OFF");
}

if (sfx_item) {
	draw_text(96, options_menu.y + sfx_item.y_offset, sfx_item.selection == 1 ? "ON" : "OFF");
}

draw_set_halign(fa_right);
draw_text(125, options_menu.y + hiscore_item.y_offset + 3, string(obj_MCP.highscore));

draw_set_alpha(1);
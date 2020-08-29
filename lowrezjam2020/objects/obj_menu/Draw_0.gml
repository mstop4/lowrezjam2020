draw_set_alpha(menu_alpha.v);
draw_set_halign(fa_left);

for (var i=0; i<num_menu_items; i++) {
	draw_text(x + menu_items[i].x_offset + arrow_spacing,
		y + menu_items[i].y_offset,
		menu_items[i].label
	);
}

if (active) {
	draw_sprite(spr_arrow, 0,
		x + menu_items[menu_pos].x_offset,
		y + menu_items[menu_pos].y_offset
	);
}

draw_set_alpha(1);
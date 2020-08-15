draw_set_alpha(score_alpha);

draw_set_valign(fa_top);
draw_set_font(obj_MCP.fnt_numbers);
draw_set_halign(fa_right);
draw_text(64, 1, string(score));

draw_set_alpha(health_alpha);

draw_sprite(spr_heart, 1, 1, 0);
draw_sprite_part(spr_heart, 0, 0, heart_top_y, 7, heart_height, 1, heart_top_y);
draw_set_halign(fa_left);

if (health_flash_visible) {
	draw_text(9, 1, string(lives));
}

draw_set_alpha(1);

// draw_text(15, 0, string(obj_enemy_manager.kills));
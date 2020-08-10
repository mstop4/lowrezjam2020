draw_set_valign(fa_top);
draw_set_font(obj_MCP.fnt_numbers);
draw_set_halign(fa_right);
draw_text(64, 0, string(score));

draw_sprite(spr_heart, 0, 1, 0);
draw_set_halign(fa_left);
draw_text(9, 0, string(lives));
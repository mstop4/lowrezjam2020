draw_self();
draw_set_colour(c_white);

draw_set_alpha(title_alpha.v);
draw_sprite(spr_title, 0, 32, 2);

draw_set_alpha(start_alpha.v);
draw_sprite(spr_start, 0, 36, 28);

draw_set_alpha(high_score_alpha.v);
draw_sprite(spr_top, 0, 47, 50);
draw_set_font(obj_MCP.fnt_numbers);
draw_set_halign(fa_center);
draw_text(48, 57, string(obj_MCP.highscore));

draw_set_alpha(1);
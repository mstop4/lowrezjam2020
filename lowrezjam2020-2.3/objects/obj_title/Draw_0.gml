draw_self();
draw_set_font(obj_MCP.fnt_small);
draw_set_colour(c_white);

draw_set_alpha(title_alpha.v);
draw_sprite(spr_title, 0, 32, 2);

draw_set_alpha(high_score_alpha.v);
draw_set_halign(fa_center);
draw_text(47, 50, "HISCORE");
draw_set_halign(fa_center);
draw_text(48, 57, string(obj_MCP.highscore));

draw_set_alpha(1);
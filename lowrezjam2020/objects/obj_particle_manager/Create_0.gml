part_sys = part_system_create_layer("Blur", false);
part_star_sys = part_system_create_layer("Stars", false);

part_bullet_trail = part_type_create();
part_type_sprite(part_bullet_trail, spr_bullet_trail, true, false, false);
part_type_alpha2(part_bullet_trail, 0.25, 0);
part_type_life(part_bullet_trail, 10, 10);

part_player_trail = part_type_create();
part_type_sprite(part_player_trail, spr_player_trail, true, false, false);
part_type_alpha2(part_player_trail, 0.5, 0);
part_type_life(part_player_trail, 15, 15);

part_star = part_type_create();
part_type_sprite(part_star, spr_star, false, false, true);
part_type_speed(part_star, 0.1, 0.2, 0, 0);
part_type_direction(part_star, 180, 180, 0, 0);
part_type_life(part_star, 700, 700);

star_emit = part_emitter_create(part_star_sys);
part_emitter_region(part_star_sys, star_emit, 67, 67, 0, 64, ps_shape_line, ps_distr_linear);
part_emitter_stream(part_star_sys, star_emit, part_star, -60);

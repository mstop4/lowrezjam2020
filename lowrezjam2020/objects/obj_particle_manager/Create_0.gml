part_sys = part_system_create_layer(layer, false);

part_bullet_trail = part_type_create();
part_type_sprite(part_bullet_trail, spr_bullet_trail, true, false, false);
part_type_alpha2(part_bullet_trail, 0.25, 0);
part_type_life(part_bullet_trail, 10, 10);
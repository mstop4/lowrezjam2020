image_xscale = my_facing;
sprite_index = my_sprites[my_state];
arm_sprite_index = arm_sprites[my_state];

if (is_invincible) {
	image_blend = c_yellow;
} else {
	image_blend = c_white;
}
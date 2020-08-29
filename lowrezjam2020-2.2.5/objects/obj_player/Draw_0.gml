if (invincible_flash_visible) {
	draw_sprite_ext(arm_sprite_index, image_index, x, y + firing_y_offset, my_facing, 1, image_angle, c_white, 1);
	draw_self();
}
if (!is_invincible && my_state != PLAYER_STATE.DASH) {
	is_invincible = true;
	alarm[2] = invincible_time;
	invincible_flash_visible = false;
	alarm[3] = invincible_flash_delay;
}
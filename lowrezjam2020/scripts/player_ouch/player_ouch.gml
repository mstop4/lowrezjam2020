if (!is_invincible && my_state != PLAYER_STATE.DASH) {
	is_invincible = true;
	alarm[2] = invincible_time;
}
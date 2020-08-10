if (!is_invincible 
	&& my_state != PLAYER_STATE.DASH
	&& my_state != PLAYER_STATE.OUCH
	&& my_state != PLAYER_STATE.DEAD) {
	lives--;
	if (lives > 0) {
		my_state = PLAYER_STATE.OUCH;
		alarm[4] = 15;
	} else {
		my_state = PLAYER_STATE.DEAD;
		yspeed = -1;
		alarm[5] = 120;
	}
}
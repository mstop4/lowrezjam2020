if (!is_invincible 
	&& my_state != PLAYER_STATE.DASH
	&& my_state != PLAYER_STATE.OUCH
	&& my_state != PLAYER_STATE.DEAD) {
	var _old_lives = lives;
	lives--;
	if (_old_lives >= max_lives && lives < max_lives) {
		health = 0;
	}
	
	if (lives > 0) {
		audio_play_sound(snd_ouch, 1, false);
		my_state = PLAYER_STATE.OUCH;
		alarm[4] = 15;
		
		if (lives <= 1) {
			with (obj_UI) {
				health_flash_visible = false;
				alarm[0] = health_flash_delay;
			}
		}
	} else {
		audio_play_sound(snd_die, 1, false);
		my_state = PLAYER_STATE.DEAD;
		yspeed = -1;
		obj_ready_go.alarm[2] = 120;
	}
}
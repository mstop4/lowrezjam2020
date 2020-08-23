function menu_start_game() {
	with (obj_title) {
		if (!is_starting && can_start) {
			audio_sound_gain(mus_title, 0, 1000);
			audio_play_sound(snd_start, 1, false);
			alarm[2] = 90;
			obj_fade_manager.fade_out_alpha.d = 1/60;
			is_starting = true;
		}	
	}
}
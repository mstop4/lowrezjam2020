if (!is_starting) {
	if (!can_start) {
		timeline_running = false;
		obj_fade_manager.fade_out_alpha.d = 0;
		obj_fade_manager.fade_out_alpha.v = 0;
		cam_pos.dx = 0;
		cam_pos.dy = 0;
		obj_menu.menu_alpha.v = 1;
		obj_menu.menu_alpha.d = 0;
		obj_menu.active = true;
		title_alpha.v = 1;
		title_alpha.d = 0;
		high_score_alpha.v = 1;
		high_score_alpha.d = 0;
		zoom_out = false;
		image_index = 3;
		alarm[0] = 120;
		camera_set_view_pos(view_camera[0], 0, 0);
		camera_set_view_size(view_camera[0], 64, 64);
		audio_stop_sound(snd_ambience);
		if (!audio_is_playing(mus_title)) {
			audio_play_sound(mus_title, 1, true);
		}
		can_start = true;
	}
}
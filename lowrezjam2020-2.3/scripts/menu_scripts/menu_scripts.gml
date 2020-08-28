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

function menu_goto_options() {
	with (obj_title) {
		main_menu.active = false;
		timeline_index = tmln_to_options;
		timeline_position = 0;
		timeline_running = true;
	}
}

function menu_goto_main_menu() {
	ini_open("settings.ini");
	ini_write_real("Audio", "Music", obj_MCP.music_gain);
	ini_write_real("Audio", "SFX", obj_MCP.sfx_gain);
	ini_close();
	
	with (obj_title) {
		obj_options.options_menu.active = false;
		timeline_index = tmln_to_main_menu;
		timeline_position = 0;
		timeline_running = true;
	}
}

function menu_quit() {
	game_end();
}
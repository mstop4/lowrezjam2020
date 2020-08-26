function toggle_fullscreen() {
	window_set_fullscreen(!window_get_fullscreen());
}

function erase_hiscore() {
	obj_MCP.highscore = 0;
	audio_play_sound(snd_die, 0.5, false);
	var _hsf = file_text_open_write("hiscore.dat");
	file_text_write_real(_hsf, 0);
	file_text_close(_hsf);
}

function toggle_SFX() {
	if (menu_items[menu_pos].selection == 0) {
		audio_group_set_gain(ag_sfx, 0, 0);
	} else {
		audio_group_set_gain(ag_sfx, 1, 0);
	}
}

function toggle_BGM() {
	if (menu_items[menu_pos].selection == 0) {
		audio_group_set_gain(ag_music, 0, 0);
	} else {
		audio_group_set_gain(ag_music, 1, 0);
	}
}
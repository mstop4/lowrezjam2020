function toggle_fullscreen() {
	window_set_fullscreen(!window_get_fullscreen());
}

function erase_hiscore() {
	obj_MCP.highscore = 0;
	audio_stop_sound(snd_die);
	audio_play_sound(snd_die, 0.5, false);
	var _hsf = file_text_open_write("hiscore.dat");
	file_text_write_real(_hsf, 0);
	file_text_close(_hsf);
}

function toggle_SFX() {
	obj_MCP.sfx_gain = menu_items[menu_pos].selection == 0 ? 0 : 1;
	audio_group_set_gain(ag_sfx, obj_MCP.sfx_gain, 0);
}

function toggle_BGM() {
	obj_MCP.music_gain = menu_items[menu_pos].selection == 0 ? 0 : 1;
	audio_group_set_gain(ag_music, obj_MCP.music_gain, 0);
}
surface_resize(application_surface, room_width, room_height);

fnt_small = font_add_sprite_ext(spr_fnt, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 :", false, 1);

// High Score
if (!file_exists("hiscore.dat")) {
	highscore = 0;
	var _hsf = file_text_open_write("hiscore.dat");
	file_text_write_real(_hsf, highscore);
	file_text_close(_hsf);
} else {
	var _hsf = file_text_open_read("hiscore.dat");
	highscore = file_text_read_real(_hsf);
	file_text_close(_hsf);
}

// Sound Settings
ini_open("settings.ini");

if (!ini_key_exists("Audio", "Music")) {
	ini_write_real("Audio", "Music", 1);
}
music_gain = ini_read_real("Audio", "Music", 1);

if (!ini_key_exists("Audio", "SFX")) {
	ini_write_real("Audio", "SFX", 1);
}
sfx_gain = ini_read_real("Audio", "SFX", 1);

ini_close();

audio_group_set_gain(ag_music, music_gain, 0);
audio_group_set_gain(ag_sfx, sfx_gain, 0);
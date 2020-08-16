surface_resize(application_surface, room_width, room_height);

fnt_numbers = font_add_sprite_ext(spr_fnt_numbers, "0123456789", false, 1);
fnt_small_num = font_add_sprite_ext(spr_fnt_small_num, "0123456789", false, 1);

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
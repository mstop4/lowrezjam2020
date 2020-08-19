if (cam_pos.update()) {
	camera_set_view_pos(view_camera[0], floor(cam_pos.x), floor(cam_pos.y));
}

if (zoom_out) {
	cam_pos.x = lerp(4, 0, zoom_t / 90);
	cam_pos.y = lerp(20, 0, zoom_t / 90);
	cam_width = lerp(32, 64, zoom_t / 90);
	camera_set_view_pos(view_camera[0], floor(cam_pos.x), floor(cam_pos.y));
	camera_set_view_size(view_camera[0], floor(cam_width), floor(cam_width))
	
	zoom_t++;
}

title_alpha.update();
start_alpha.update();
high_score_alpha.update();

if (keyboard_check(ord("H"))) {
	erase_high_score_buffer++;

	if (erase_high_score_buffer == 60) {
		obj_MCP.highscore = 0;
		audio_play_sound(snd_die, 0.5, false);
		var _hsf = file_text_open_write("hiscore.dat");
		file_text_write_real(_hsf, 0);
		file_text_close(_hsf);
	}
} else if (keyboard_check_released(ord("H"))) {
	erase_high_score_buffer = 0;
}
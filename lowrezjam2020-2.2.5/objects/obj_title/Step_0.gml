if (cam_pan_x != 0 || cam_pan_y != 0) {
	cam_x += cam_pan_x;
	cam_y += cam_pan_y;
	camera_set_view_pos(view_camera[0], floor(cam_x), floor(cam_y));
}

if (zoom_out) {
	cam_x = lerp(4, 0, zoom_t / 90);
	cam_y = lerp(20, 0, zoom_t / 90);
	cam_width = lerp(32, 64, zoom_t / 90);
	camera_set_view_pos(view_camera[0], floor(cam_x), floor(cam_y));
	camera_set_view_size(view_camera[0], floor(cam_width), floor(cam_width))
	
	zoom_t++;
}

if (title_alpha_delta != 0) {
	title_alpha = min(title_alpha + title_alpha_delta, 1);
}

if (start_alpha_delta != 0) {
	start_alpha = min(start_alpha + start_alpha_delta, 1);
}

if (high_score_alpha_delta != 0) {
	high_score_alpha = min(high_score_alpha + high_score_alpha_delta, 1);
}

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
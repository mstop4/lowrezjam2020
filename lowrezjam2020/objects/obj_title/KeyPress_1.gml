if (can_start) {
	room_goto(room0);
} else {
	timeline_running = false;
	fade_dir = 0;
	cam_pan_x = 0;
	cam_pan_y = 0;
	fade_out_alpha = 0;
	start_alpha = 1;
	start_alpha_delta = 0;
	title_alpha = 1;
	title_alpha_delta = 0;
	high_score_alpha = 1;
	high_score_alpha_delta = 0;
	image_index = 3;
	alarm[0] = 120;
	camera_set_view_pos(view_camera[0], 0, 0);
	camera_set_view_size(view_camera[0], 64, 64);
	can_start = true;
}
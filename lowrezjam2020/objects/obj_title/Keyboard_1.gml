if (can_start) {
	room_goto(room0);
} else {
	timeline_running = false;
	fade_dir = 0;
	cam_pan_x = 0;
	cam_pan_y = 0;
	fade_out_alpha = 0;
	camera_set_view_pos(view_camera[0], 0, 0);
	camera_set_view_size(view_camera[0], 64, 64);
	can_start = true;
}
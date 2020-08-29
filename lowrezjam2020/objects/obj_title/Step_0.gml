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
high_score_alpha.update();
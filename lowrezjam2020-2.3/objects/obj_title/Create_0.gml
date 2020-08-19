can_start = false;
is_starting = false;
obj_fade_manager.fade_out_alpha.d = 0;
obj_fade_manager.fade_out_alpha.v = 1;

title_alpha = new Slider(0, 0, 0, 1);
start_alpha = new Slider(0, 0, 0, 1);
high_score_alpha = new Slider(0, 0, 0, 1);

cam_pos = new Slider2(
	camera_get_view_x(view_camera[0]),
	camera_get_view_y(view_camera[0]),
	0,
	0
);

cam_width = camera_get_view_width(view_camera[0]);

zoom_out = false;
zoom_t = 0;

audio_stop_all();
audio_sound_gain(mus_level, 1, 0);
audio_sound_gain(mus_title, 1, 0);

timeline_index = tmln_title;
timeline_running = true;

erase_high_score_buffer = 0;
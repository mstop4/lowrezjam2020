can_start = false;
is_starting = false;
fade_dir = 0;
fade_out_alpha = 1;

title_alpha = 0;
start_alpha = 0;
high_score_alpha = 0;

title_alpha_delta = 0;
start_alpha_delta = 0;
high_score_alpha_delta = 0;

cam_pan_x = 0;
cam_pan_y = 0;
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_width = camera_get_view_width(view_camera[0]);

zoom_out = false;
zoom_t = 0;

audio_stop_all();
audio_sound_gain(mus_level, 1, 0);
audio_sound_gain(mus_title, 1, 0);

timeline_index = tmln_title;
timeline_running = true;

erase_high_score_buffer = 0;
can_start = false;
fade_dir = 0;
fade_out_alpha = 1;

cam_pan_x = 0;
cam_pan_y = 0;
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_width = camera_get_view_width(view_camera[0]);

zoom_out = false;
zoom_t = 0;

timeline_index = tmln_title;
timeline_running = true;
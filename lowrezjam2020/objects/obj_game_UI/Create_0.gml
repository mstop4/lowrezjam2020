heart_top_y = 0;
heart_height = 7;
health_flash_visible = true;

obj_fade_manager.fade_out_alpha.d = -1/30;
obj_fade_manager.fade_out_alpha.v = 1;
alarm[1] = 30;

score_alpha = 1;
health_alpha = 1;
audio_stop_all();
audio_play_sound(mus_level, 1, true);

player_id = obj_player.id;
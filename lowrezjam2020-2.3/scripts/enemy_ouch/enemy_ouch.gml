function enemy_ouch() {
	if (!is_spawning) {
		score += other.my_value;
		my_value = min(other.my_value * 2, 1024);
	
		// var _p = instance_create_layer(x, y, layer, obj_points);
		// _p.my_value = string(other.my_value);
	
		audio_play_sound(snd_pop, 0.5, false);
		with (obj_enemy_manager) {
			kills++;

			if (kills >= kill_quota && level < max_level) {
				level++;
				spawn_delay = spawn_delay_table[level];
				max_enemies = max_enemies_table[level];
				kill_quota += kill_quota_table[level];
			}
		}
	
		instance_destroy(other);
		instance_destroy();
	}
}
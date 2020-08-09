if (is_active && instance_number(obj_enemy) < max_enemies) {
	var _x = irandom_range(spawn_left, spawn_right);
	
	instance_create_layer(_x, -5, "Instances", choose(obj_enemy, obj_enemy2, obj_enemy3, obj_enemy4));
}
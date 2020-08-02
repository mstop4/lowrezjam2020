if (instance_number(obj_enemy) < max_enemies) {
	var _x = irandom_range(spawn_left, spawn_right);
	
	instance_create_layer(_x, -5, "Instances", obj_enemy);
}
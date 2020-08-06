if (!is_spawning) {
	score += other.my_value;
	my_value = other.my_value * 2;
	
	// var _p = instance_create_layer(x, y, layer, obj_points);
	// _p.my_value = string(other.my_value);
	
	instance_destroy(other);
	instance_destroy();
}
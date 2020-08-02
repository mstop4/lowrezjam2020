if (!is_spawning) {
	instance_destroy(other);

	for (var i=0; i<4; i++) {
		var _b = instance_create_layer(x, y, layer, obj_bullet);
		_b.direction = i*90;
		_b.image_index = _b.direction div 45;
	}

	instance_destroy();
}
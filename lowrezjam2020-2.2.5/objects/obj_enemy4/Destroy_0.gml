for (var i=0; i<5; i++) {
	var _b = instance_create_layer(x, y, layer, obj_bullet);
	_b.direction = i*45;
	_b.image_index = _b.direction div 45;
	_b.my_value = my_value;
}
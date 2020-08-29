for (var i=0; i<3; i++) {
	var _b = instance_create_layer(x, y, layer, obj_bullet);
	_b.direction = i*90;
	_b.image_index = _b.direction div 45;
		_b.my_value = my_value;
}

for (var i=0; i<2; i++) {
	var _b = instance_create_layer(x, y, layer, obj_bullet);
	_b.direction = i*90 + 225;
	_b.image_index = _b.direction div 45;
	_b.my_value = my_value;
}
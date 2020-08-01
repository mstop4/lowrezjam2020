instance_destroy(other);

for (var i=0; i<4; i++) {
	var _b = instance_create_layer(x, y, layer, obj_bullet);
	_b.direction = i*90;
	_b.image_angle = _b.direction;
}

x = irandom_range(sprite_xoffset, room_width - sprite_width + sprite_xoffset);
y = irandom_range(sprite_yoffset, room_height - sprite_height + sprite_yoffset);
hspeed = choose(-my_speed, my_speed);
vspeed = choose(-my_speed, my_speed);
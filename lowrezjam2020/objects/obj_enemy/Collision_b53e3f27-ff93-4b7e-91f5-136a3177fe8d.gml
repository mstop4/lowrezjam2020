instance_destroy(other);
x = irandom_range(x + sprite_xoffset, room_width - sprite_width + sprite_xoffset);
y = irandom_range(y + sprite_yoffset, room_height - sprite_height + sprite_yoffset);
hspeed = choose(-0.5, 0.5);
vspeed = choose(-0.5, 0.5);
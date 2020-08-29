if (x - sprite_xoffset <= 0) {
	x = sprite_xoffset;
	hspeed *= -1;
} else if (x + sprite_width - sprite_xoffset >= room_width) {
	x = room_width - sprite_width + sprite_xoffset;
	hspeed *= -1;
}

if (!is_spawning && y - sprite_yoffset <= 0) {
	y = sprite_yoffset;
	vspeed *= -1;
} else if (y + sprite_height - sprite_yoffset >= obj_MCP.floor_y) {
	y = obj_MCP.floor_y - sprite_height + sprite_yoffset;
	vspeed *= -1;
}

if (is_spawning && y > sprite_yoffset) {
	is_spawning = false;
}
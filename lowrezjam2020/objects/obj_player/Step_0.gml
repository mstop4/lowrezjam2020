var _v_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _shoot_input = keyboard_check_pressed(ord("Z"));
var _dash_input = keyboard_check_pressed(ord("X"));

my_facing = _v_input != 0 && my_state != PLAYER_STATE.DASH ? _v_input : my_facing;

if (my_state == PLAYER_STATE.IDLE || my_state == PLAYER_STATE.WALK) {
	my_state = _v_input == 0 ? PLAYER_STATE.IDLE : PLAYER_STATE.WALK;
}

if (my_state == PLAYER_STATE.DASH) {
	x = clamp(x + my_facing * 2, 4, 60);
	var _x = floor(x);
	var _y = floor(y);
	part_particles_create(obj_particle_manager.part_sys, _x, _y, obj_particle_manager.part_player_trail, 1);
} else {
	x = clamp(x + _v_input, 4, 60);

	if (_shoot_input) {
		firing_y_offset = 1;
		alarm[0] = 10;
	
		var _x = my_facing == FACING.LEFT ? x-1 : x;
	
		instance_create_layer(_x, y-4, layer, obj_shot);
	}

	if (_dash_input) {
		my_state = PLAYER_STATE.DASH;
		alarm[1] = dash_time;
	}
}
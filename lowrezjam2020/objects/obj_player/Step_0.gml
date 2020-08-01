var _v_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _shoot_input = keyboard_check_pressed(vk_space);

my_facing = _v_input != 0 ? _v_input : my_facing;
my_state = _v_input == 0 ? PLAYER_STATE.IDLE : PLAYER_STATE.WALK;

x = clamp(x + _v_input, 4, 60);

if (_shoot_input) {
	firing_y_offset = 1;
	alarm[0] = 10;
	
	var _x = my_facing == FACING.LEFT ? x-1 : x;
	
	instance_create_layer(_x, y-4, layer, obj_shot);
}
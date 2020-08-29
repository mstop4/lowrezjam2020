menu_items = [];
menu_pos = 0;
num_menu_items = 0;
menu_alpha = new Slider(init_alpha, 0, 0, 1);

ctrl_id = obj_controller.id;

get_item = function(_name) {
	for (var i=0; i<num_menu_items; i++) {
		if (menu_items[i].label == _name) {
			return menu_items[i];
		}
	}
	
	return -1;
}
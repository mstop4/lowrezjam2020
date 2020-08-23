menu_items = [
	new MenuItem("START", 0, 0, menu_start_game),
	new MenuItem("OPTIONS", 0, 6, -1)
];

num_menu_items = array_length(menu_items);
menu_pos = 0;
menu_alpha = new Slider(0, 0, 0, 1);
function add_menu_item(_menu_id, _label, _x_offset, _y_offset, _on_confirm) {
	with (_menu_id) {
		array_set(menu_items, num_menu_items, new MenuItem(_label, _x_offset, _y_offset, _on_confirm));
		num_menu_items = array_length(menu_items);
	}
}
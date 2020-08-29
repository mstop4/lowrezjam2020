add_menu_item(id, "START", 0, 0, "menu_start_game", false, -1, 1, 0);
add_menu_item(id, "OPTIONS", 0, 6, "menu_goto_options", true, -1, 1, 0);
if (os_browser == browser_not_a_browser) { 
	add_menu_item(id, "QUIT", 0, 12, "menu_quit", false, -1, 1, 0);
}
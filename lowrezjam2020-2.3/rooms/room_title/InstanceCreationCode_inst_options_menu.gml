var _y = 0;

if (os_browser == browser_not_a_browser) { 
	add_menu_item(id, "FULLSCREEN", 0, _y, "toggle_fullscreen", -1, 1, 0);
	_y += 7;
}
add_menu_item(id, "MUSIC: ", 0, _y, -1, "toggle_BGM", 2, 1);
_y += 7;

add_menu_item(id, "SFX: ", 0, _y, -1, "toggle_SFX", 2, 1);
_y += 7;

add_menu_item(id, "RESET\nHISCORE", 0, _y, "erase_hiscore", -1, 1, 0);
_y += 13;

add_menu_item(id, "BACK", 0, _y, "menu_goto_main_menu", -1, 1, 0);
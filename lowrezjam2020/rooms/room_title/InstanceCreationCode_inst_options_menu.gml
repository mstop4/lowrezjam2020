ini_open("settings.ini");
var _music_on = ini_read_real("Audio", "Music", 1);
var _sfx_on = ini_read_real("Audio", "SFX", 1);
ini_close();

var _y = 0;

if (os_browser == browser_not_a_browser) { 
	add_menu_item(id, "FULLSCREEN", 0, _y, "toggle_fullscreen", false, -1, 1, 0);
	_y += 7;
}

add_menu_item(id, "MUSIC: ", 0, _y, -1, false, "toggle_BGM", 2, _music_on);
_y += 7;

add_menu_item(id, "SFX: ", 0, _y, -1, false, "toggle_SFX", 2, _sfx_on);
_y += 7;

add_menu_item(id, "RESET\nHISCORE", 0, _y, "erase_hiscore", false, -1, 1, 0);
_y += 13;

add_menu_item(id, "BACK", 0, _y, "menu_goto_main_menu", true, -1, 1, 0);
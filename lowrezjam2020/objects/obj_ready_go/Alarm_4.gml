if (score > obj_MCP.highscore) {
	obj_MCP.highscore = score;
	var _hsf = file_text_open_write("hiscore.dat");
	file_text_write_real(_hsf, score);
	file_text_close(_hsf);
}

obj_UI.fade_dir = 1/30;
obj_UI.alarm[2] = 30;

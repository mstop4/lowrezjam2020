// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function erase_hiscore(){
	obj_MCP.highscore = 0;
	audio_play_sound(snd_die, 0.5, false);
	var _hsf = file_text_open_write("hiscore.dat");
	file_text_write_real(_hsf, 0);
	file_text_close(_hsf);
}
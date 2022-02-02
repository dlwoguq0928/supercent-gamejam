// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_hard_reset(){
	//hard reset.
	save_struct(sysval.save_path,{});
	game_restart();
}
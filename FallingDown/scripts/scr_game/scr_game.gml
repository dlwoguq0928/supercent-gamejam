// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_clear(){
	game_status = 3;
	
	gameval.level += 1;
	distance_now = 0;
}

function game_over(){
	game_status = 2;
	
	distance_now = 0;
}

function game_start(){
	game_status = 1;
	
	room_goto(rm_game);
	distance_now = 0;
	distance_max = 10 + 5*(gameval.level - 1);
}

function game_ready(){
	game_status = 0;
	
	room_goto(rm_main);
	delta_coin = 0;
	delta_diamond = 0;
}
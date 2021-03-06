/// @descr

//# Save the Game Data
save_struct(sysval.save_path,gameval);

if (game_status == 1)
{
	//# 떨어진 거리 초당 0.5m 추가
	if (!jump)
	{
		distance_now += 0.5/room_speed;
	}

	//# 다 떨어졌으면 게임 클리어
	if (distance_now >= distance_max)
	{
		game_clear();
	}
}

if (game_status == 2 || game_status == 3)
{
	if mouse_check_button_pressed(mb_left)
	{
		game_ready();
	}
	
	// 게임 일시중지
	with(ob_parent_obstacle) speed = 0;
	with(ob_coin) speed = 0;
	with(ob_diamond) speed = 0;
	layer_vspeed("Background",0);
}
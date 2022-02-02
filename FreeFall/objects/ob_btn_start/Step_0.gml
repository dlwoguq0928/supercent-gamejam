/// @descr 

image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left)
	{
		image_blend = c_ltgray;
	}
}

// 자신 or UI 제외 터치하면 게임 시작
if mouse_check_button_pressed(mb_left)
{
	var inst = instance_position(mouse_x,mouse_y,id);
	if (inst == id || inst == noone)
	{
		game_start();
	}
}
/// @descr 

image_blend = c_white;
if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left)
	{
		image_blend = c_ltgray;
	}
	if mouse_check_button_pressed(mb_left)
	{
		btn_func();
	}
}

//토글 이미지 변경
image_index = settval.sound;
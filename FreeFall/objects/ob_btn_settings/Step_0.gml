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
		
		// EFS 재생
		if (settval.sound)
		{
			audio_play_sound(snd_efs_click,1,false);
		}
	}
}
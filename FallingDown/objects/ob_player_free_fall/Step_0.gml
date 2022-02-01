/// @descr 

if (floating_sign == 1)
{
	vspeed = 1;
	if (y - o_y >= floating_y/2)
	{
		floating_sign = -1;
	}
}

if (floating_sign == -1)
{
	vspeed = -1;
	if (y - o_y <= -floating_y/2)
	{
		floating_sign = 1;
	}
}


// 메인 배경 변경
image_index = gameval.character_selected;
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_index(back_id, gameval.character_selected);
/// @descr

event_inherited();

btn_caption = "+";

btn_func = function() {
	if (settval.bgm_volume + 0.1 <= 1)
	{
		settval.bgm_volume += 0.1;
	}
}
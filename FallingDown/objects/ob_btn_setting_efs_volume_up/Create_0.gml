/// @descr

event_inherited();

btn_caption = "+";

btn_func = function() {
	if (settval.efs_volume + 0.1 <= 1)
	{
		settval.efs_volume += 0.1;
	}
}
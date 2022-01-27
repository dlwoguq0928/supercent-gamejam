/// @descr 

if (sign(x - room_width/2) == sign(hspeed))
or (hspeed == 0)
{
	if (y <= 0)		//긴급 픽스
	{
		instance_destroy();
	}
}
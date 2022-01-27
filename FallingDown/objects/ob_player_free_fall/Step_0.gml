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
/// @descr 


if (y > room_height/2)
{
	y = room_height/2;
	vspeed = 0;
	gravity = 0;
}

hspeed = - device_get_tilt_x() * 20;
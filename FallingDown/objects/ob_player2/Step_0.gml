/// @descr 


if (y > room_height/2)
{
	y = room_height/2;
	vspeed = 0;
	gravity = 0;
}

var delta = device_get_tilt_x();
if (abs(delta) >= 0.1) hspeed = - sign(delta) * 12;
else hspeed = 0;
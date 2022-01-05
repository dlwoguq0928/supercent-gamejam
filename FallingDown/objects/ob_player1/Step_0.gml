/// @descr 


if (y > room_height/2)
{
	y = room_height/2;
	vspeed = 0;
	gravity = 0;
}

var delta = mouse_x - mouse_x_prev;
if (abs(delta) >= 1) hspeed = sign(delta)*12;
else hspeed = 0;
mouse_x_prev = mouse_x;
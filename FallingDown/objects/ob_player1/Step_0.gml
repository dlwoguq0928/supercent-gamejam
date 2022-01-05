/// @descr 


if (y > room_height/2)
{
	y = room_height/2;
	vspeed = 0;
	gravity = 0;
}

hspeed = sign(mouse_x - mouse_x_prev)*5;
mouse_x_prev = mouse_x;
/// @descr

// Inherit the parent event
event_inherited();


// 진자운동
pendulum_angle += pendulum_speed*pendulum_toggle;
if (abs(pendulum_angle) > pendulum_range/2)
{
	pendulum_angle = sign(pendulum_angle)*pendulum_range/2;
	pendulum_toggle = -pendulum_toggle;
}
image_angle = pendulum_angle;
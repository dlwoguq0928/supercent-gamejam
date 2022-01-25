/// @descr

// Inherit the parent event
event_inherited();


// 개쩌는 진자운동 코드
image_angle += pendulum_speed*pendulum_toggle;
if (abs(angle_difference(0,image_angle)) >= pendulum_angle/2)
{
	pendulum_toggle = !pendulum_toggle;
}
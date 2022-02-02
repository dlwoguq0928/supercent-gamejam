/// @descr

// Inherit the parent event
event_inherited();

pendulum_toggle = choose(-1,1); // 진자운동 현재 방향
pendulum_range = 50; // 진자운동 범위 0~360
pendulum_angle = 0;  // 진자운동 각도 (-range/2 ~ +range/2)
pendulum_speed = 2;  //진자운동 속도


//# Velocity 인가, (Direction은 생성단에서 결정)
hspeed = 5;
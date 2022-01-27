/// @descr 

gravity_direction = 270;
gravity = 0.1;

for(i=0;i<10;i++)
{
	mouse_x_prev[i] = mouse_x;
}


//# 점프 관련 변수
globalvar jump, jump_gage, jump_gage_max, jump_gage_required;
jump = false;
jump_gage_max = 100;
jump_gage = jump_gage_max;
jump_gage_required = 100;

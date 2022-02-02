/// @descr 

// 점프 연출
if (jump)
{
	vspeed = 0;
}
else
{
	if (vspeed > -10)
	{
		vspeed -= 1;
	}
	else
	{
		vspeed = -10;
	}
}

// alpha 값 조정 
/*
if (y - ob_player.y <= 0)
{
	image_alpha = 0.5;
	valid = false;
}

*/

//이미지 방향 전환
if (hspeed != 0) image_xscale = sign(hspeed);
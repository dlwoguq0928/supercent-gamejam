/// @descr 


if (game_status == 1)
{
	if (jump)
	{
		// 점프 연출
		vspeed = 0;
	}
	else
	{
		// 낙하 연출
		if (vspeed > -10)
		{
			vspeed -= 1;
		}
		else
		{
			vspeed = -10;
		}
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
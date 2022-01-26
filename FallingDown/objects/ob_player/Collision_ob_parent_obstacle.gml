/// @descr

// 장애물과 충돌 시 튕겨져 나감
// var dt_x = (x - other.x)
// x += sign(dt_x)*100;

// 장애물과 충돌 시 진동
if Haptics_HasVibrator()
{
	if (!other.vibrated)
	{
		other.vibrated = true;
		Haptics_Vibrate(250);
	}
}

// 게임오버
game_over();
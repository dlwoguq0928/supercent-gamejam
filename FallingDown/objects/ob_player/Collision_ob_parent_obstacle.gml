/// @descr

// 장애물과 충돌 시 튕겨져 나감
// var dt_x = (x - other.x)
// x += sign(dt_x)*100;

// 장애물과 충돌 시 진동
if Haptics_HasVibrator()
{
	Haptics_Vibrate(250);
}
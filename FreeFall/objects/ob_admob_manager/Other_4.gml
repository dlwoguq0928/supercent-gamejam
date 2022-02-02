/// @descr


//# 룸 전환 10회마다 전면광고 띄우기 
room_changed += 1;
if (room_changed >= 10)
{
	alarm[0] = 1;
	room_changed = 0;
}



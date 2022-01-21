/// @descr 

//# 구름 생성 루프
alarm[0] = 90;

var rand = irandom(2);

if (rand == 0)
{
	instance_create_layer(random(room_width),room_height+32,"Instances",ob_meteo);
}
else if (rand == 1)
{
	var inst = instance_create_layer(0,room_height+32,"Instances",ob_meteo);
	inst.hspeed = 5;
}
else if (rand == 2)
{
	var inst = instance_create_layer(room_width,room_height+32,"Instances",ob_meteo);
	inst.hspeed = -5;
}
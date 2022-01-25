/// @descr 

//# 장애물 생성 루프
alarm[0] = 90;


if (room == rm_game)
{
	var rand = irandom(2);
	switch(rand)
	{
		default:	break;
		case 0:	//멈춤
			var cr_x = random(room_width);
			var cr_y = room_height+32;
			var cr_ob = choose(ob_meteo,ob_antenna,ob_ufo,ob_space_junk);
			var inst = instance_create_layer(cr_x,cr_y,"Instances",cr_ob);
			break;
		case 1: //좌->우
			var cr_x = 0-125;
			var cr_y = room_height+125;
			var cr_ob = choose(ob_meteo,ob_antenna,ob_ufo,ob_space_junk);
			var inst = instance_create_layer(cr_x,cr_y,"Instances",cr_ob);
			inst.hspeed = 5;
			break;
		case 2: //우->좌
			var cr_x = room_width+125;
			var cr_y = room_height+32;
			var cr_ob = choose(ob_meteo,ob_antenna,ob_ufo,ob_space_junk);
			var inst = instance_create_layer(cr_x,cr_y,"Instances",cr_ob);
			inst.hspeed = -5;
			break;
	}
}

/// @descr 

//# 장애물 생성 루프
alarm[0] = 90 * power(0.9,gameval.level - 1);


var rand;
if (room == rm_game)
{
	var cr_ob;
	rand = random(22.5);
	if (rand <= 10.5) cr_ob = ob_meteo;
	else if (rand <= 15) cr_ob = choose(ob_antenna,ob_ufo,ob_space_junk,ob_space_junk_2,ob_space_junk_3,ob_blackhole);
	else if (rand <= 19.5) cr_ob = ob_coin;
	else cr_ob = ob_diamond;
	
	rand = irandom(2);
	switch(rand)
	{
		default:	break;
		case 0:	//멈춤
			var cr_x = random_range(125,room_width-125);
			var cr_y = room_height+32;
			var inst = instance_create_layer(cr_x,cr_y,"Instances",cr_ob);
			break;
		case 1: //좌->우
			var cr_x = 0-125;
			var cr_y = room_height+125;
			var inst = instance_create_layer(cr_x,cr_y,"Instances",cr_ob);
			inst.hspeed = abs(inst.hspeed);
			break;
		case 2: //우->좌
			var cr_x = room_width+125;
			var cr_y = room_height+125;
			var inst = instance_create_layer(cr_x,cr_y,"Instances",cr_ob);
			inst.hspeed = -abs(inst.hspeed);
			break;
	}
}

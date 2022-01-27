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


//캐릭터 스프라이트 변경
switch(gameval.character_selected)
{
	default:	break;
	case 0:
		my_sprite = spr_player;
		my_sprite_jump = spr_player_jump;
		sprite_index = my_sprite;
		break;
	case 1:
		my_sprite = spr_player_1;
		my_sprite_jump = spr_player_1_jump;
		sprite_index = my_sprite;
		break;
}
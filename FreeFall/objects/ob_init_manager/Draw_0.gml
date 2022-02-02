/// @descr

if (room == rm_init)
{
	draw_clear($363636);

	var _alpha = (alarm[0] <= room_speed*1) ? alarm[0]/(room_speed*1) : 2 - alarm[0]/(room_speed*1);
	draw_sprite_ext(spr_logo_game,0,room_width/2,room_height/2,1,1,0,c_white,_alpha);
}
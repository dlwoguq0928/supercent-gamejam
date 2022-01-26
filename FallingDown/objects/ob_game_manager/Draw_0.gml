/// @descr 

if (room == rm_main)
or (room == rm_shop)
{
	//# 코인, 다이아몬드 UI
	draw_instant(function() {
		draw_set_alpha(0.9);
		draw_set_colour(c_white);
		draw_roundrect_ext(30,160-24,180,160+24,48,48,false);
		draw_roundrect_ext(30,230-24,180,230+24,48,48,false);
	});
	draw_instant(function() {
		draw_sprite(spr_coin,0,40,160);
		draw_sprite(spr_diamond,0,40,230);
	});
	draw_instant(function() {
		draw_macro(fa_middle, fa_right, c_black, 20, function() {
			draw_text(160,160,string_unit(su.comma,gameval.coin));
			draw_text(160,230,string_unit(su.comma,gameval.diamond));
		});
	});
}

if (room == rm_game)
{
	//# Level 표시 UI
	draw_instant(function() {
		draw_set_alpha(0.5);
		draw_set_colour(c_aqua);
		draw_roundrect_ext(room_width/2-72,160-20,room_width/2+72,160+20,40,40,false);
	});
	draw_instant(function() {
		draw_macro(fa_middle, fa_center, c_white, 20, function() {
			draw_text(room_width/2,160,"Level "+string_unit(su.comma,gameval.level));
		});
	});
	

	// 점프 게이지 UI
	draw_instant(function() {
		var ratio = jump_gage/jump_gage_max;
		draw_set_colour(c_aqua);
		draw_roundrect_ext(690,440-280*(ratio),710,440,20,20,false);
	});

}

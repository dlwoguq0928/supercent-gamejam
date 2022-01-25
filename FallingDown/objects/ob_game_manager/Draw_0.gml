/// @descr 

if (room == rm_main)
{
	draw_instant(function() {
		draw_macro(fa_middle, fa_right, c_black, 20, function() {
			draw_text(120,60,string_unit(su.comma,gameval.coin));
			draw_text(120,100,string_unit(su.comma,gameval.diamond));
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

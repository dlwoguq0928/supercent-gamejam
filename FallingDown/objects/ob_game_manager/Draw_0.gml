/// @descr 

if (room == rm_main)
{
	//# 코인, 다이아몬드 UI
	draw_instant(function() {
		draw_set_alpha(0.9);
		draw_set_colour(c_white);
		draw_roundrect_ext(30,60-24,180,60+24,48,48,false);
		draw_roundrect_ext(30,130-24,180,130+24,48,48,false);
	});
	draw_instant(function() {
		draw_sprite(spr_coin,0,40,60);
		draw_sprite(spr_diamond,0,40,130);
	});
	draw_instant(function() {
		draw_macro(fa_middle, fa_right, c_black, 20, function() {
			draw_text(160,60,string_unit(su.comma,gameval.coin));
			draw_text(160,130,string_unit(su.comma,gameval.diamond));
		});
	});
	
	//# Level 표시 UI
	draw_instant(function() {
		draw_set_alpha(0.5);
		draw_set_colour(c_aqua);
		draw_roundrect_ext(room_width/2-72,60-20,room_width/2+72,60+20,40,40,false);
	});
	draw_instant(function() {
		draw_macro(fa_middle, fa_center, c_white, 20, function() {
			draw_text(room_width/2,60,"Level "+string_unit(su.comma,gameval.level));
		});
	});
}

if (room == rm_shop)
{
	//# 코인, 다이아몬드 UI
	draw_instant(function() {
		draw_set_alpha(0.9);
		draw_set_colour(c_white);
		draw_roundrect_ext(30,60-24,180,60+24,48,48,false);
		draw_roundrect_ext(30,130-24,180,130+24,48,48,false);
	});
	draw_instant(function() {
		draw_sprite(spr_coin,0,40,60);
		draw_sprite(spr_diamond,0,40,130);
	});
	draw_instant(function() {
		draw_macro(fa_middle, fa_right, c_black, 20, function() {
			draw_text(160,60,string_unit(su.comma,gameval.coin));
			draw_text(160,130,string_unit(su.comma,gameval.diamond));
		});
	});
}

if (room == rm_game)
{
	// 떨어진 거리
	draw_instant(function() {
		var ratio = distance_now/distance_max;
		draw_set_colour(c_white);
		draw_line_width(80,120,640,120,5);
		draw_circle(80+560*ratio,120,10,false);
	});
	
	// 점프 게이지 UI
	draw_instant(function() {
		var ratio = jump_gage/jump_gage_max;
		draw_set_colour(c_aqua);
		draw_roundrect_ext(690,630-300*(ratio),710,630,20,20,false);
	});

}

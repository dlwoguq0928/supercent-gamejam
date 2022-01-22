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
	draw_instant(function() {
		draw_macro(fa_middle, fa_center, c_white, 20, function() {
			draw_text(360,160,"Level "+string_unit(su.comma,gameval.level));
		});
	});
}
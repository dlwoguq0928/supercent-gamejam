/// @descr

if (room == rm_settings)
{
	draw_instant(function() {
		draw_macro(fa_middle, fa_center, c_white, 40, function() {
			draw_text(room_width/2,200,"Settings");
		});
		draw_macro(fa_middle, fa_center, c_white, 32, function() {
			draw_text(room_width/2,364,"Sound");
			draw_text(room_width/2,620,"Haptics");
		});
	});
}
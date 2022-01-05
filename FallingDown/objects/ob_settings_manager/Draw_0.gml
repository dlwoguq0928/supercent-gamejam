/// @descr

if (room == rm_settings)
{
	draw_instant(function() {
		draw_macro(fa_middle, fa_center, c_black, 32, function() {
			draw_text(room_width/2,360,"배경 음악");
			draw_text(room_width/2,688,"효과음");
		});
		draw_macro(fa_middle, fa_center, c_black, 25, function() {
			draw_text(room_width/2,480,string(round(settval.bgm_volume*100))+"%");
			draw_text(room_width/2,808,string(round(settval.efs_volume*100))+"%");
		});
	});
}
/// @descr 


//# Game Over & Clear 드로우
if (game_status == 2 || game_status == 3)
{
	draw_instant(function(){
		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(0,0,room_width,room_height,false);
	});

	//# Game Over
	if (game_status == 2)
	{
		draw_instant(function(){
			draw_macro(fa_middle,fa_center,c_red,64,function(){
				draw_text(room_width/2,600,"Game Over");
			});
			draw_sprite(spr_coin,0,room_width/2-60,730);
			draw_sprite(spr_diamond,0,room_width/2-60,800);
			draw_macro(fa_middle,fa_center,c_white,32,function(){
				draw_text(room_width/2,730,string_unit(su.comma,delta_coin));
				draw_text(room_width/2,800,string_unit(su.comma,delta_diamond));
			});
		})
	}
	
	//# Game Clear
	if (game_status == 3)
	{
		draw_instant(function(){
			draw_macro(fa_middle,fa_center,c_aqua,64,function(){
				draw_text(room_width/2,600,"Game Clear");
			});
			draw_sprite(spr_coin,0,room_width/2-60,730);
			draw_sprite(spr_diamond,0,room_width/2-60,800);
			draw_macro(fa_middle,fa_center,c_white,32,function(){
				draw_text(room_width/2,730,string_unit(su.comma,delta_coin));
				draw_text(room_width/2,800,string_unit(su.comma,delta_diamond));
			});
		})
	}
}
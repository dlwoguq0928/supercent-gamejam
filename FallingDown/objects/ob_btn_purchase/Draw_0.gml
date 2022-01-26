/// @descr

if (!btn_status)
{
	//# 구매 버튼 && 필요 코인 드로우 
	draw_instant(function() {
		draw_set_alpha(0.9);
		draw_set_colour(image_blend);
		draw_roundrect_ext(x-70,y-24,x+80,y+24,48,48,false);
	});
	draw_instant(function() {
		draw_sprite(spr_coin,0,x-60,y);
	});
	draw_instant(function() {
		draw_macro(fa_middle, fa_right, c_black, 20, function() {
			draw_text(x+60,y,string_unit(su.comma,price));
		});
	});
}
else
{
	//# 선택 버튼 드로우
	draw_instant(function() {
		draw_sprite(spr_btn_select,image_index,x,y);
	});
}
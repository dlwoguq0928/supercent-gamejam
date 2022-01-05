/// @descr

draw_self();

//# draw btn caption
draw_instant(function() {
	draw_macro(fa_middle, fa_center, c_black, 20, function() {
		draw_text(x,y+3,btn_caption);
	});
});
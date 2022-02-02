/// @descr

//# draw self with button blending
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
if (image_blend != c_white)
{
	gpu_set_blendmode(bm_add);
	var bc = image_blend;
	bc = make_colour_hsv(255-color_get_hue(bc),color_get_saturation(bc),color_get_value(bc));
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	gpu_set_blendmode(bm_normal);
}

//# draw btn caption
draw_instant(function() {
	draw_macro(fa_middle, fa_center, c_black, 20, function() {
		draw_text(x,y+3,btn_caption);
	});
});
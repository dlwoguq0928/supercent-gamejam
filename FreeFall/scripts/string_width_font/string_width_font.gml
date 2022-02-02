// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_width_font(font,str){
	var o_font = draw_get_font();
	draw_set_font(font);
	return string_width(str);
	draw_set_font(o_font);
}
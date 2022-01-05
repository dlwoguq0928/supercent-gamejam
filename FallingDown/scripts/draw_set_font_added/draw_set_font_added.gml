// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_set_font_added(fontSize,bold)
{
	var font_name = "font_"+string(fontSize);
	if (bold) {	font_name += "_bold"; }
	if variable_struct_exists(font_added,font_name)
	{
		draw_set_font(variable_struct_get(font_added,font_name));
	}
	else
	{
		var new_font = font_add("fonts/DOSGothic.ttf",fontSize,bold,false,0,0);
		variable_struct_set(font_added,font_name,new_font);
	}
}
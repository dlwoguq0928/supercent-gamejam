/// @descr

// Inherit the parent event
event_inherited();

//글자 크기에 맞춰 스프라이트 크기 변경
draw_set_font(ft_pt_20);
var str_w = string_width(btn_caption);
var str_h = string_height(btn_caption);
var spr_w = sprite_get_width(sprite_index);
var spr_h = sprite_get_height(sprite_index);
var padding_x = 32;
var padding_y = 32;
image_xscale = (str_w + padding_x*2)/spr_w;
image_yscale = (str_h + padding_y*2)/spr_h;


/// @descr 

// 좌/우 벽넘기 금지
var spr_w = sprite_get_width(sprite_index);
if (x < 0+spr_w/2) x = 0+spr_w/2;
if (x > 720-spr_w/2) x = 720-spr_w/2;

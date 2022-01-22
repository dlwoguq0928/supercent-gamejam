/// @descr 


// 점프 게이지 드로우
var ratio = jump_gage/jump_gage_max;
draw_set_colour(c_red);
draw_rectangle(680,440-240*(ratio),700,440,false);


draw_self();
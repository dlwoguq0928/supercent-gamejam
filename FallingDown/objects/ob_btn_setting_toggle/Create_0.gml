/// @descr

event_inherited();

btn_caption = "슬라이드 방식";
	if (settval.control_type == 0) btn_caption = "슬라이드 방식"
	if (settval.control_type == 1) btn_caption = "기울기 방식"

confirm_1 = -1;
confirm_2 = -1;

btn_func = function() {
	settval.control_type = !settval.control_type;
	if (settval.control_type == 0) btn_caption = "슬라이드 방식"
	if (settval.control_type == 1) btn_caption = "기울기 방식"
}
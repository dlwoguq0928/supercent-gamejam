/// @descr

event_inherited();

btn_caption = "초기화";

confirm_1 = -1;
confirm_2 = -1;

btn_func = function() {
	confirm_1 = show_confirm("정말로 게임을 초기화 하시겠습니까? 다시는 복구할 수 없으니 신중히 선택하세요.");
}
/// @descr

confirm_accepted(confirm_1, function() {
	confirm_2 = show_confirm("(재확인) 정말로 게임을 초기화 하시겠습니까?");
});

confirm_accepted(confirm_2, function() {
	game_soft_reset();
	show_alert("게임 데이터가 초기화 되었습니다!");
});
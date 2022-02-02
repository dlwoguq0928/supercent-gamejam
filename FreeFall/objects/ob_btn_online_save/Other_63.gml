/// @descr

confirm_accepted(confirm, function() {
	if (hash_id != noone)
	{
		var url = "https://www1.physia.kr/ws/appserver/"+game_package+"/save_data.php?game_id="+game_package;
		var str = "&email="+hash_id;
		str += "&game_data="+json_stringify(gameval);
		http = http_post_string(url,str);
		show_alert("게임 데이터 저장 요청을 보냈습니다!");
	}
	else
	{
		show_alert("Predicted Error : 고유 ID가 유효하지 않습니다! (고유 ID를 캡처하여 문의해주세요.");
	}
});
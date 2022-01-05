/// @descr

event_inherited();

btn_caption = "";

confirm = -1;
http = -1;
game_package = sysval.game_package;
hash_id = noone;

btn_func = function() {
	if GooglePlayServices_IsSignedIn()
	{
		var accountInfoJSON = GooglePlayServices_GetAccount();
		var accountInfo = json_parse(accountInfoJSON);
		//email을 대신할 고유 해시 ID 생성
		hash_id = sha1_string_utf8(accountInfo.displayName + accountInfo.familyName + accountInfo.givenName);
		confirm = show_confirm("고유 ID : "+hash_id+"\n\n게임 데이터를 저장하시겠습니까?\n\n(문제 발생 시 고유 ID를 캡처하여 이메일로 제보해 주십시오.)");
	}
	else
	{
		GooglePlayServices_StartSignInIntent();
	}
}

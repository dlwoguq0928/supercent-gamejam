

if (os_type == os_android)
{
	var _init = GPBilling_ConnectToStore();
	if (_init == gpb_error_unknown)
	{
		show_alert("ERROR - Billing API가 연결 되지 않았습니다!");
		alarm[0] = room_speed*10;
	}
}
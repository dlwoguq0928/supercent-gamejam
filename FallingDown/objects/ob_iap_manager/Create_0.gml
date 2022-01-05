/// @description Set IAP


//# IAP 검사에 사용할 변수
global.iap_enabled = false;

//# 제품 ID 선언
products = [
	{
		product_id: "template.iap.1",
		reward_func: function() {
			settval.allow_ads = false;
			AdMob_Banner_Hide();
		},
	},
];

//# IAP 검사에 사용할 변수
global.current_tokens = ds_list_create();
global.current_products = ds_list_create();

//# 스토어에 연결 시도
var _init = GPBilling_ConnectToStore();
if (_init == gpb_error_unknown)
{
	show_alert("ERROR - Billing API가 연결 되지 않았습니다!");
	alarm[0] = room_speed*10;
}


// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function iap_purchase(_product_id){
	switch(os_type)
	{
		default:	break;
		case os_android:
			if GPBilling_IsStoreConnected() && global.iap_enabled
			{
				var _chk = GPBilling_PurchaseProduct(_product_id);
				// alternatively, for subscriptions:
				// var _chk = GPBilling_PurchaseSubscription(global.product_ids[0]);
				if _chk != gpb_no_error
				{
				// Purchase unavailable, add failsafe code if required
				}
			}
			else
			{
				show_debug_message("ERROR IAP not connected or not enabled.");
				
				//!-- 스토어에 연결 시도
				var _init = GPBilling_ConnectToStore();
				if (_init == gpb_error_unknown)
				{
					show_alert("ERROR - Billing API가 연결 되지 않았습니다!");
					alarm[0] = room_speed*10;
				}
				//--!
			}
			break;
	}
}
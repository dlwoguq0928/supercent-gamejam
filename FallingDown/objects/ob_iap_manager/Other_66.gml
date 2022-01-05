/// @description IAP Process


switch(os_type)
{
	default:	break;
	case os_android:
		#region android
		var _eventId = async_load[? "id"];
		switch (_eventId)
		    {
		    case gpb_store_connect:
		        // 스토어에 연결되었으므로 제품 ID 추가
		        global.iap_enabled = false;
				for(i=0;i<array_length(products);i++)
				{
					GPBilling_AddProduct(products[i].product_id);
				}
		        // Etc… for all products
		        GPBilling_QueryProducts();
		        // Here you would also add any subscription products
		        // using the function GooglePlayBilling_AddSubscription().
		        // However, you would NOT call the function GPBilling_QuerySubscriptions()
		        // here if you have already queried products, but instead query
		        // the subscription in the appropriate Async Event (see the "Querying
		        // Products" section, below)
		        break;
		    case gpb_store_connect_failed:
		        // Store has failed to connect, so try again periodically
				alarm[0] = room_speed * 10;
		        break;
			case gpb_product_data_response:
				var _json = async_load[? "response_json"];
				var _map = json_decode(_json);
				if _map[? "success"] == true
				    {
				    var _plist = _map[? "skuDetails"];
				    for (var i = 0; i < ds_list_size(_plist); ++i;)
				        {
				        // Any code required to store query information goes here
				        }
				    var _purchase_json = GPBilling_QueryPurchases(gpb_purchase_skutype_inapp);
				    var _purchase_map = json_decode(_purchase_json);
				    if _purchase_map[? "success"] == true
				        {
				        var _list = _purchase_map[? "purchases"];
				        var _sz = ds_list_size(_list);
				        for (var i = 0; i < _sz; ++i;)
				            {
				            var _map = _list[| i];
				            if _map[? "purchaseState"] == 0
				                {
				                // Purchase has been made, so now get the product ID
				                // and unique "token" string to identify the purchase
				                var _pid = _map[? "productId"];
				                var _token = _map[? "purchaseToken"];
				                var _add = false;
								}
				            }
				        }
				    ds_map_destroy(_purchase_map);
				    global.iap_enabled = true;
				    }
				ds_map_destroy(_map);
				break;
			case gpb_iap_receipt:
			    // Get the JSON object response string
			    var _json = async_load[? "response_json"];
			    var _map = json_decode(_json);
			    // Check the response to see if it succeeded
			    if _map[? "success"] == true
			        {
			        // Check the purchases key for any outstanding product purchases
			        if ds_map_exists(_map, "purchases")
			            {
			            // Loop through the purchases list and parse each
			            // entry to get the purchase data DS map
			            var _plist = ds_map_find_value(_map, "purchases");
			            for (var i = 0; i < ds_list_size(_plist);  ++i;)
			                {
			                var _pmap = _plist[| i];
			                var _ptoken = _pmap[? "purchaseToken"];
			                var _sig = GPBilling_Purchase_GetSignature(_ptoken);
			                var _pjson = GPBilling_Purchase_GetOriginalJson(_ptoken);
			                // Verify the purchase before consuming or acknowledging it
			                if GPBilling_Purchase_VerifySignature(_pjson, _sig)
			                    {
			                    GPBilling_ConsumeProduct(_ptoken);
			                    // If it is a durable product then you'd call
			                    // GPBilling_AcknowledgePurchase();
			                    ds_list_add(global.current_tokens, _ptoken);
			                    ds_list_add(global.current_products, _pmap[? "productId"]);
			                    }
			                }
			            }
			        }
			    ds_map_destroy(_map);
			    break;
			case gpb_product_consume_response:
			    // Get the JSON object response string
			    var _json = async_load[? "response_json"];
			    var _map = json_decode(_json);
			    var _num = -1;
			    // Get the purchase token for the product that has been purchased
			    if ds_map_exists(_map, "purchaseToken") 
			    {
				    // compare the response purchase token against the list
				    // of purchase token requests
				    for (var i = 0; i < ds_list_size(global.current_tokens); ++i;)
				    {
					    // the response matches a token in the purchase check list
					    if _map[? "purchaseToken"] == global.current_tokens[| i]
					    {
							for(k=0;k<array_length(products);k++)
							{
								if (global.current_products[| i] == products[k].product_id)
								{
									products[k].reward_func();
									show_alert("아이템을 성공적으로 구매했습니다. 진심으로 감사드립니다. 필요한 게 있으시면 언제든지 이메일로 말씀해 주세요. - 제작자 올림 -");
									_num = i;
									break; break;
								}
							}
					    }
				    }
				    // Remove the purchased product and its purchase token
				    // from the appropriate check lists
				    if _num > -1
				    {
					    ds_list_delete(global.current_products, _num);
					    ds_list_delete(global.current_tokens, _num);
				    }
			    }
				else
			    {
				    // Parse the error response codes here
				    // and react appropriately
			    }
			    ds_map_destroy(_map);
			    break;
			case gpb_acknowledge_purchase_response:
			    var _map = json_decode(async_load[? "response_json"]);
			    var _num = -1;
			    // Check the response code to see if it has been successfully acknowledged
			    if _map[? "responseCode"] == 0
			        {
			        var _sz = ds_list_size(global.current_products);
			        // Loop through the products on the consumed/purchase list
			        // to find which one triggered this event
			        for (var i = 0; i < _sz; ++i;)
			            {
			            // Add further checks for other products here if required…
			            }
			        // Remove the purchased product and its purchase token
			        // from the appropriate check lists
			        if _num > -1
			            {
			            ds_list_delete(global.current_products, _num);
			            ds_list_delete(global.current_tokens, _num);
			            }
			        }
			    else
			        {
			        // Parse the other response codes here
			        // and react appropriately
			        }
			    ds_map_destroy(_map);
			    break;
		    }
		#endregion
		break;
}




///-- IAP
	

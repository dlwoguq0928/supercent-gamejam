/// @description show_alert(str)
/// @param str
function show_alert(argument0) {

	if(os_type == os_android) or (os_type == os_ios) {
	    return native_alert(argument0);
	    //return show_message_async(argument0);
	}else {
	    return show_message_async(argument0);
	}



}

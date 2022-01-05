/// @description show_confirm(str)
/// @param str
function show_confirm(argument0) {

	if(os_type == os_android) or (os_type == os_ios) {
	    return native_confirm(argument0);
	    //return show_question_async(argument0);
	}else {
	    return show_question_async(argument0);
	}



}

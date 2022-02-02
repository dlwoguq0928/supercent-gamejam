/// @description show_prompt(str,def)
/// @param str
/// @param def
function show_prompt(argument0, argument1) {

	if(os_type == os_android) or (os_type == os_ios) {
	    return native_prompt(argument0,argument1);
		//return get_string_async(argument0,argument1);
	}else {
	    if is_real(argument0) {
	        return get_integer_async(argument0,argument1);
	    }else {
	        return get_string_async(argument0,argument1);
	    }
	}

}

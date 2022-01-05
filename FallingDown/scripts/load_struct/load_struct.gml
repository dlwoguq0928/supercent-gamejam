// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_struct(path,default_struct) {
	var file_path = path;
	if file_exists(file_path)
	{
		var file = file_text_open_read(file_path);
		var json = file_text_read_string(file);
		if (json != "")
		{
			var struct = json_parse(json);
			
			//# 누락된 변수가 존재하면 default_struct의 변수로 대체
			var names = variable_struct_get_names(default_struct);
			var name;
			for(i=0;i<array_length(names);i++)
			{
				name = names[i];
				if !variable_struct_exists(struct,name)
				{
					variable_struct_set(struct,name,
						variable_struct_get(default_struct,name));
				}
			}
			
			return struct;
		}
		else
		{
			//# Debug
			debug(function() {
				show_message_async("Error : The Struct Data File is Empty.");
			});
			
			return default_struct;
		}
		file_text_close(file);
	}
	else
	{
		//# Debug
		debug(function() {
			show_message_async("Error : The Struct Data File does not Exists.");
		});
			
		return default_struct;
	}
}
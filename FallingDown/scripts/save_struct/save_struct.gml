// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_struct(path,struct) {
	var file_path = path;
	var file = file_text_open_write(file_path);
	var json = json_stringify(struct);
	file_text_write_string(file,json);
	file_text_close(file);
}
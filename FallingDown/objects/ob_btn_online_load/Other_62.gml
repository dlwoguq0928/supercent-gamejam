/// @descr
var r_str = "null";
if (ds_map_find_value(async_load, "id") == http)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
		r_str = ds_map_find_value(async_load, "result");
		
		if (r_str == "The query failed.")
		{
			show_alert("Predicted Error : "+r_str);
		}
		else
		{
			gameval = json_parse(r_str);
			show_alert("게임 데이터가 성공적으로 로드되었습니다!");
		}
    }
	else
	{
		show_alert("Predicted Error : 요청을 보냈지만 실패 했습니다.");
	}
}
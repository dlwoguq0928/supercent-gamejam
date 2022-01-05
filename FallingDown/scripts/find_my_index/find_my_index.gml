// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_my_index(){
	for(i=0;i<instance_number(object_index);i++)
	{
		if (instance_find(object_index,i) == id)
		{
			return i;
		}
	}
}
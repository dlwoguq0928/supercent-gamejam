// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum su
{
	comma = 0,
	kor_count = 1,
	si_count = 2,
}

function string_unit(str_unit,val){
	switch(str_unit)
	{
		default:
			return "Error : Unavaliable String Unit.";
			break;
		case su.comma:
			str = string(floor(val));
			sep_str = ",";
			sep_n = 3;

			var str_len = string_length(str);
			while (str_len > sep_n)
			{
			    str_len -= sep_n;
			    str = string_insert(sep_str, str, str_len+1);
			}

			return str;  
			break;
		case su.kor_count:
			var unit_kor = ["","만","억","조","경","해","자","양","구","간","정","재","극","항하사","아승기","나유타","불가사의","무량대수"];
			var arr_len = array_length(unit_kor);
			for(i=0;i<arr_len;i++)
			{
				if(val < power(10000,i+1))
				{
					if (i < 1)
					{
						return string(val div power(10000,i)) + unit_kor[i];
					}
					else
					{
						var part_1, part_2;
						part_1 = val div power(10000,i);
						part_2 = val mod power(10000,i) div power(10000,i-1);
						if (part_2 == 0) return string(part_1) + unit_kor[i];
						else return string(part_1) + unit_kor[i] + " " + string(part_2) + unit_kor[i-1];
					}
				}
			}
			break;
		case su.si_count:
			var unit_kor = ["","k","M","G","T","P","E","G","Y"];
			var arr_len = array_length(unit_kor);
			for(i=0;i<arr_len;i++)
			{
				if(val < power(1000,i+1))
				{
					return string(floor(val) / power(1000,i)) + unit_kor[i];
				}
			}
			break;
	}
}
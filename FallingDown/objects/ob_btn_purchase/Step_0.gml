/// @descr

// Inherit the parent event
event_inherited();

// btn_status 변경 (구매 버튼 or 선택 버튼)
btn_status = gameval.character_having[character_index];

// 선택 여부에 따른 image_index 변경 (선택 or 선택 완료)
if (btn_status) and (gameval.character_selected == character_index)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

//shop page scroll
x = o_x - shop_page*720;
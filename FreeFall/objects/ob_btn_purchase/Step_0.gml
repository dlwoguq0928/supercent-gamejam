/// @descr

// Inherit the parent event
event_inherited();


// 구매 or 캐릭터 선택
if mouse_check_button_pressed(mb_left)
{
	if (!btn_status)
	{
		if position_meeting(mouse_x,mouse_y,id)
		{
			//purchase
			confirm = show_confirm("Would you like to purchase this character?s\n\nPrice : "+string_unit(su.comma,price)+" Coins");
			// EFS 재생
			if (settval.sound)
			{
				audio_play_sound(snd_efs_click,1,false);
			}
		}
	}
	else
	{
		if (shop_page == character_index)
		and !position_meeting(mouse_x,mouse_y,ob_btn_arrow_left) 
		and !position_meeting(mouse_x,mouse_y,ob_btn_arrow_right)
		and !position_meeting(mouse_x,mouse_y,ob_btn_exit)
		{
			//select
			gameval.character_selected = character_index;
			// EFS 재생
			if (settval.sound)
			{
				audio_play_sound(snd_efs_click,1,false);
			}
		}
	}
}
	

// btn_status 변경 (구매 버튼 or 선택 버튼)
btn_status = gameval.character_having[character_index];

// 선택 여부에 따른 image_index 변경 (선택 or 선택 완료)
if (btn_status) and (gameval.character_selected == character_index)
{
	image_index = 1;
	visible = true;
}
else
{
	image_index = 0;
	if (btn_status) visible = false;
}

//shop page scroll
x = o_x - shop_page*720;
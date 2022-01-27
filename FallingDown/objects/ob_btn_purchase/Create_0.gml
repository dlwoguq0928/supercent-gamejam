/// @descr

event_inherited();

btn_caption = "";

confirm = -1;

btn_func = function() {
	if (!btn_status)
	{
		//purchase
		confirm = show_confirm("Would you like to purchase this character?s\n\nPrice : "+string_unit(su.comma,price)+" Coins");
	}
	else
	{
		//select
		gameval.character_selected = character_index;
	}
	
	// EFS 재생
	if (settval.sound)
	{
		audio_play_sound(snd_efs_click,1,false);
	}
}

purchase_func = function () {
	show_alert("Purchase was successful!");
	gameval.character_having[character_index] = true;
}

btn_status = false;  //false: purchase, true: select

o_x = x;
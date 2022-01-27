/// @descr

event_inherited();

btn_caption = "";

confirm = -1;

btn_func = function() {
	if (visible)
	{
		shop_page = min(1,shop_page+1);
		with(ob_character) x -= 720;
		with(ob_btn_purchase) x -= 720;
	}
}


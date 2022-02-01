/// @descr

event_inherited();

btn_caption = "";

confirm = -1;

btn_func = function() {
}

purchase_func = function () {
	show_alert("Purchase was successful!");
	gameval.character_having[character_index] = true;
}

btn_status = false;  //false: purchase, true: select

o_x = x;
/// @descr

confirm_accepted(confirm,function() {
	if (gameval.coin >= price)
	{
		gameval.coin -= price;
		purchase_func();
	}
	else
	{
		show_alert("Not enough coins or diamonds.");
	}
});
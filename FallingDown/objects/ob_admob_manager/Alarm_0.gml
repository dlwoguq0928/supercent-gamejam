/// @descr


//# 전면광고 띄우기
if ads_allowed()
{
	if AdMob_Interstitial_IsLoaded()
	{
		AdMob_Interstitial_Show();
	}
	else
	{
		AdMob_Interstitial_Load();
		alarm[0] = 1;
	}
}

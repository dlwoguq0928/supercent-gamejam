/// @descr


AdMob_Initialize();

var banner_id = "ca-app-pub-5084613220154546/8578938456";
var inter_id = "ca-app-pub-5084613220154546/5393537767";
var reward_id = "ca-app-pub-5084613220154546/5508786513";

AdMob_Banner_Init(banner_id);
AdMob_Interstitial_Init(inter_id);
AdMob_RewardedVideo_Init(reward_id);

//# 디버그 모드로 설정 
debug(function() {
	AdMob_SetTestDeviceId();
});

//# 배너 광고 띄우기
if ads_allowed()
{
	AdMob_Banner_Create(AdMob_Banner_ADAPTIVE,false);
}

//룸 전환 횟수
room_changed = 0;
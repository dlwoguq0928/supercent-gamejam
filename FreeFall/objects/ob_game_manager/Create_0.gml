/// @descr


//# Game Values
globalvar gameval;
gameval = {
	started: false,
	coin: 10000,
	diamond: 0,
	level: 1,
	character_selected: 0,
	character_having: [true,false,false,false,false,false,false,false,false,false,false,false,false],
};

//# Load the Game Data If It Is
gameval = load_struct(sysval.save_path,gameval);

//# 떨어진 거리 관련 변수
globalvar distance_now, distance_max;
distance_now = 0;
distance_max = 10;

//# 획득 재화 변수
globalvar delta_coin, delta_diamond;
delta_coin = 0;
delta_diamond = 0;

//# 게임 상태 관련 변수
globalvar game_status;
game_status = 0; //0:ready, 1:playing, 2:over, 3:clear

//# 상점 페이지 변수
globalvar shop_page;
shop_page = 0;

//# 구름 생성 루프
alarm[0] = 10;

//# Randomize
randomize();

//# Haptic Init
Haptics_Init();

//# 광고 배너 추가
AdMob_Initialize();
AdMob_SetTestDeviceId();
AdMob_Banner_Init("ca-app-pub-5084613220154546/6457216696");
AdMob_Banner_Create(AdMob_Banner_NORMAL,true);

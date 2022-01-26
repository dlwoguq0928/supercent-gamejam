/// @descr


//# Game Values
globalvar gameval;
gameval = {
	started: false,
	coin: 10000,
	diamond: 0,
	level: 1,
	character_selected: 0,
	character_having: [true,false],
};

//# Load the Game Data If It Is
gameval = load_struct(sysval.save_path,gameval);


//# 구름 생성 루프
alarm[0] = 10;

//# Randomize
randomize();

//# Haptic Init
Haptics_Init();
/// @descr


//# Game Values
globalvar gameval;
gameval = {
	started: false,
	coin: 0,
	diamond: 0,
	level: 1,
};

//# Load the Game Data If It Is
gameval = load_struct(sysval.save_path,gameval);


//# 구름 생성 루프
alarm[0] = 10;

//# Randomize
randomize();
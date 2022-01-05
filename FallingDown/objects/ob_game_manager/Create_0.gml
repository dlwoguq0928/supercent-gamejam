/// @descr


//# Game Values
globalvar gameval;
gameval = {
	
	//#
	//# Add Your Game Variables Like:
	//#	money: 0,
	//#
	
};

//# Load the Game Data If It Is
gameval = load_struct(sysval.save_path,gameval);


//# 구름 생성 루프
alarm[0] = 10;
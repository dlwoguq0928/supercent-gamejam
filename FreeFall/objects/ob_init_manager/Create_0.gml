/// @descr



//# System Values
globalvar sysval;
sysval = {
	save_path: "game.data",
	settings_save_path: "game_settings.data",
	game_package: "com.reborn.fallingdown",
	store_url: "",
};
sysval.store_url = "https://play.google.com/store/apps/details?id="+sysval.game_package;

alarm[0] = room_speed*2;  //exit init (Loading Min)


//# Skip Loading
if (os_type == os_windows)
{
	alarm[0] = 1;
}
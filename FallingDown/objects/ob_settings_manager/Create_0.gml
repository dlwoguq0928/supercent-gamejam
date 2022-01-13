/// @descr

globalvar settval;
settval = {
	bgm_volume:	1,
	efs_volume:	1,
	fcm_accept: noone,
	allow_ads: true,  //hidden setting (IAP)
	control_type: 0, //0:drag, 1:tilt
};

settval = load_struct(sysval.settings_save_path,settval);
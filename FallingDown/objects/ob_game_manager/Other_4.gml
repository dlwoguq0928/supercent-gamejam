/// @descr 


audio_stop_all();

// BGM 재생
if (settval.sound)
{
	switch(room)
	{
		default:	break;
		case rm_main:
			audio_play_sound(snd_bgm_main,false,true);
			break;
		case rm_game:
			audio_play_sound(snd_bgm_game,false,true);
			
			// EFS 재생
			if (settval.sound)
			{
				audio_play_sound(snd_efs_intro,1,false);
			}
			break;
		case rm_shop:
			audio_play_sound(snd_bgm_shop,false,true);
			break;
	}
}
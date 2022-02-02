/// @descr 

with(other)	instance_destroy();
gameval.coin += 1;
delta_coin += 1;

// EFS 재생
if (settval.sound)
{
	audio_play_sound(snd_efs_coin,1,false);
}
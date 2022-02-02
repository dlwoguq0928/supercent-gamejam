// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function snd_play_efs(soundid){
	//Play Effect Sound
	var snd = audio_play_sound(soundid,1,false);
	audio_sound_gain(snd,settval.efs_volume,0);
}
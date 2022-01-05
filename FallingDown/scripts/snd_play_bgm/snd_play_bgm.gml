// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function snd_play_bgm(soundid){
	//Play Effect Sound
	var snd = audio_play_sound(soundid,0,true);
	audio_sound_gain(snd,settval.bgm_volume,0);
}
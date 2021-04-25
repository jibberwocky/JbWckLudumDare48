/// @description Insert description here
function scr_play_bgm(_bgm){
	if(!audio_is_playing(_bgm)){
		audio_play_sound(_bgm,1,true);
	}
}

function scr_play_sound(_sound){
	if(!audio_is_playing(_sound)){
		audio_sound_pitch(_sound, random_range(0.85,1.15));
		audio_play_sound(_sound,10,false);
	}
}
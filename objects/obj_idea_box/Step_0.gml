/// @description Insert description here
if(global.paused){exit;}
script_execute(state);

if(vSpeed == 0){
	hSpeed = lerp(hSpeed,0,0.3);
}
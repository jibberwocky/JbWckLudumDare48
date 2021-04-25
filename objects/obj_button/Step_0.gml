/// @description Insert description here
/// @description Insert description here
// You can write your code in this editor
var _hover = scr_mouse_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover, 0.1);
y = lerp(y, ystart - hover*8,0.1);

if(_click && (script != -1)){
	scr_play_sound(snd_click);
	script_execute(script);
	
}
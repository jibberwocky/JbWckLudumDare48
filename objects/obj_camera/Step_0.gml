/// @description move to near where we want to go


//update based on mouse scroll
var _input_up = mouse_wheel_up();
var _input_down = mouse_wheel_down();

var _input_direction = _input_down - _input_up;


//update based on mouse on edge of screen?
var _mGui_y = device_mouse_y_to_gui(0);
//get the mouse's y position on the screen
if(_mGui_y < scroll_boundry){//if we are at the top of the screen
		//yTo = mouse_y;
	_input_direction = -1;
}else if(_mGui_y > RESOLUTION_H-scroll_boundry){
	_input_direction = 1;
	//yTo = mouse_y;
}else{
	
}
	
if(_input_direction != 0){
	//if we are scrolling in a direction
	//y =   (y+view_height_half*_input_direction);
	yTo +=  _input_direction*SCROLL_SENSITIVY;
	
	//Echo("Scrolling towards ",yTo, "mouse down",_mGui_y, "Mouse scroll dir",_input_direction);
	//Echo("room bounds", view_height_half, room_height-view_height_half);
}else{
	//yTo = y;
}
yTo = clamp(yTo, view_height_half, room_height-view_height_half);	

//update camera position
y = lerp(y,yTo,SCROLL_SPEED);

//bound within the room
//x = clamp(x, view_width_half, room_width-view_width_half);
y = clamp(y, view_height_half, room_height-view_height_half);

/// @description Insert description here

//draw_healthbar
if(global.paused){exit;}
#region Draw  progress bar
	scr_draw_progress_bar(x-TILE_SIZE,y-TILE_SIZE,progress, progress_max,1);

#endregion

if(breakpoints != -1) && (check_breakpoints()){//if we are at a breakpoint
	#region Draw big_bubble
	draw_sprite_ext(spr_speech_bubble_big,
floor(big_bubble_frame ),
philosopher.x,philosopher.y+bubble_offset,philosopher.image_xscale,1,0,c_white,0.9);

if(big_bubble_frame  < 5){
	big_bubble_frame += sprite_get_speed(spr_speech_bubble_big)/FRAME_RATE;
}else{
	//draw the icons
	for(var i = 0; i <array_length(option_icon); i++){
	scr_draw_icon(option_icon[i], option_pos[i], philosopher.image_xscale)
	}
	
	big_bubble_frame = Wrap(big_bubble_frame,0,6);
}
	#endregion
	
}else{
#region Draw bubbles

draw_sprite_ext(spr_speech_bubble,
floor(bubble_one_frame),
philosopher.x,philosopher.y+bubble_offset,philosopher.image_xscale,1,0,c_white,0.9);

//update bubble frame
if(bubble_one_frame < 6) && (bubble_one_frame >= 1){
	bubble_one_frame += sprite_get_speed(spr_speech_bubble)/FRAME_RATE;
}else if (bubble_one_frame < 1){
	 bubble_one_option = scr_choose_new_bubble_option(philosopher);
	 bubble_one_frame += sprite_get_speed(spr_speech_bubble)/FRAME_RATE;
}else{
	if(Chance(0.25)){
		var _increment = choose(0,1)
		bubble_one_frame += (sprite_get_speed(spr_speech_bubble)/FRAME_RATE)*_increment;
		bubble_one_frame = Wrap(bubble_one_frame,0,8);
	}
	if(bubble_one_option != -1){
		draw_sprite_ext(spr_icons,
		bubble_one_option,
		philosopher.x + (icon_offset_x*philosopher.image_xscale),
		philosopher.y+icon_offset_y,philosopher.image_xscale,1,0,c_white,0.9);
	}

}


draw_sprite_ext(spr_speech_bubble,
floor(bubble_one_frame),
subject.x,subject.y+bubble_offset,subject.image_xscale,1,0,c_white,0.9);


if(bubble_two_frame < 6) && (bubble_two_frame >= 1){
	bubble_two_frame += sprite_get_speed(spr_speech_bubble)/FRAME_RATE;
}else if (bubble_two_frame < 1){
	 bubble_two_option = scr_choose_new_bubble_option(subject);
	 bubble_two_frame += sprite_get_speed(spr_speech_bubble)/FRAME_RATE;
}else{
	if(Chance(0.25)){
		var _increment = choose(0,1)
		bubble_two_frame += (sprite_get_speed(spr_speech_bubble)/FRAME_RATE)*_increment;
		bubble_two_frame = Wrap(bubble_two_frame,0,8);
	}
	if(bubble_two_option != -1){
		draw_sprite_ext(spr_icons,
		bubble_two_option,
		subject.x + (icon_offset_x*subject.image_xscale),
		subject.y+icon_offset_y,subject.image_xscale,1,0,c_white,0.9);
	}

}

#endregion

}
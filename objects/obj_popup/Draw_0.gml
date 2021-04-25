/// @description Insert description here

if(text_displayed != -1){//if we have passed in text to display
	draw_set_font(fnt_main);
	draw_set_halign(fa_left);
	draw_set_halign(fa_right);
	draw_set_color(c_black);
	draw_text_colour(x, y, string(text_displayed),drawcolor,drawcolor,drawcolor,c_black,opacity);
	draw_set_color(c_white);
	draw_text_colour(x, y+0.5, string(text_displayed),drawcolor,drawcolor,drawcolor,c_white,opacity);
	opacity -= 0.01;


	if(opacity <= 0){instance_destroy();}
}else if(emoticon != -1){
	draw_sprite_ext(spr_emoticons,emoticon,x,y,size,size,0,c_white,opacity)	
	opacity -= 0.01;
	size -= 0.001;


	if(opacity <= 0){instance_destroy();}

}else{
	instance_destroy();
}
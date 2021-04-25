/// @description Insert description here
//initiate text drawing event
draw_sprite_stretched(gui_nice_slice,0,x1,y1,(x2-x1),(y2-y1));


draw_set_font(fnt_menu_small);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(dark_color);

//slice the string
var _print = string_copy(message_text, 1,textProgress);
//show_debug_message(_print);
draw_set_color(dark_color);
draw_text_ext((x1+x2)/2,y1+8,_print,32,(x2-x1)*0.95);
draw_set_color(light_color);
draw_text_ext((x1+x2)/2,y1+7,_print,32,(x2-x1)*0.95);

draw_set_halign(fa_left);

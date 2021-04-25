/// @description Insert description here


// You can write your code in this editor
draw_sprite_stretched(gui_nice_slice,round(hover),x,y,width,height);

draw_set_alpha(1);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);
draw_set_color(dark_color);
draw_text((x+width/2)-0.5, (y+height/2)-1, text);
draw_set_color(light_color);
draw_text(x+width/2, y+height/2, text);

draw_set_color(light_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
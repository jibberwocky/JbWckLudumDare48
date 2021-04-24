function scr_draw_progress_bar(_x_pos, _y_pos, _current, _max, _scale ){
			//draw each mood bar
			draw_sprite_ext(spr_progress_bar_shadow,0,_x_pos, _y_pos,_scale,_scale,0,c_white,1);
			
			//fill in the healthbar
			var _healthbar_width = 100*_scale;
			var bar_value = (_current/_max)*_healthbar_width;
			draw_sprite_stretched(spr_progress_bar_segment,0,_x_pos,_y_pos,bar_value,_scale*4)
			
			
			draw_sprite_ext(spr_progress_bar,0,_x_pos,_y_pos,_scale,_scale,0,c_white,1);
}
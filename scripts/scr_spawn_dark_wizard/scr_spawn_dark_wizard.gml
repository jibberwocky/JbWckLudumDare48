/// @description Insert description here
function scr_spawn_dark_wizard(){

		with(obj_goblin_philosopher){
		//check if there is a dark wizard
			if(instance_number(obj_dark_wizard) < floor(other.dark_wizard_limit)){
				
				if(y > WIZARD_DEPTH) &&(!in_conversation) && (Chance(0.25)&&(state == idle_script)){
					var xx = choose(-TILE_SIZE*2, TILE_SIZE*2);
					instance_create_layer(x+xx, y-1, "Instances", obj_dark_wizard);
				}
			}
		}

}
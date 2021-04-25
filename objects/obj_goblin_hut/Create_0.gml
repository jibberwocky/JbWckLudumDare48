/// @description Insert description here

// Inherit the parent event
event_inherited();

idea = irandom_range(0,9);

breakpoints = 5;
progress_max = 250;

repeat(3){
	var _rand = irandom_range(0,array_length(preferences)-1);
	preferences[_rand] -= 20;
}


var _rand = irandom_range(0,array_length(preferences)-1);
preferences[_rand] += 50;

preferences[idea] = 0;
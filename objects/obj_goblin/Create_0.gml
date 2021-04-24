/// @description Insert description here

// Inherit the parent event
event_inherited();

image_xscale = choose(-1,1);

state =  scr_goblin_state_idle;

in_conversation = false;

//populate an array with random values for preffered or not prefered objects
preferences = []
//make 3 of them positive

//make one of them very negative

repeat(10){
	array_push(preferences, irandom_range(-10,20));
}

repeat(3){
	var _rand = irandom_range(0,array_length(preferences)-1);
	preferences[_rand] += 20;
}

var _rand = irandom_range(0,array_length(preferences)-1);
preferences[_rand] -= 40;
Echo(preferences);


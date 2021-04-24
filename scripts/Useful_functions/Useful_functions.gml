// A set if useful functions kindly collated and provided by a Mr Shaun Spalding

function Concat(){
	//concatenates strings together
	var _string = "";
	for(var i = 0; i < argument_count; i++){_string += argument[i]}
	return _string;
}


function Echo(){
	//concatenates strings together
	var _string = "";
	for(var i = 0; i < argument_count; i++){_string += (" "+ string(argument[i]))}
	show_debug_message(_string);
}




function Approach(value, target, ammount){
	/// Approach(a, b, amount)
// Moves "a" towards "b" by "amount" and returns the result
// Nice bcause it will not overshoot "b", and works in both directions
// Examples:
//      speed = Approach(speed, max_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, max_hp, heal_amount);
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);
 
	if (argument0 < argument1)
	{
	    argument0 += argument2;
	    if (argument0 > argument1)
	        return argument1;
	}
	else
	{
	    argument0 -= argument2;
	    if (argument0 < argument1)
	        return argument1;
	}
	return argument0;
	

}

function wave(from, to, duration, offset){ //Wave(from, to, duration, offset)

// Returns a value that will wave back and forth between [from-to] over [duration] seconds
// Examples
//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
//      x = Wave(-10,10,0.25,0)         -> move left and right quickly

// Or here is a fun one! Make an object be all squishy!! ^u^
//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)

a4 = (to - from) * 0.5;
return from + a4 + sin((((current_time * 0.001) + duration * offset) / duration) * (pi*2)) * a4;
}

function Wrap(value, _min, _max){
	/// @description Wrap(value, min, max)
	/// @function Wrap
	/// @param value
	/// @param min
	/// @param max
	// Returns the value wrapped, values over or under will be wrapped around

	if (value mod 1 == 0)
	{
		while (value > _max || value < _min)
		{
			if (value > _max)
				value += _min - _max - 1;
			else if (value < _min)
				value += _max - _min + 1;
		}
		return(value);
	}
	else
	{
		var vOld = value + 1;
		while (value != vOld)
		{
			vOld = value;
			if (value < _min)
				value = _max - (_min - value);
			else if (value > _max)
				value = _min + (value - _max);
		}
		return(value);
	}
}


function JumpInDirection(distance, _direction){
	/// @param distance
	/// @param direction

	// Teleports parent object to a spot based on given direction and distance

	x += lengthdir_x(distance,_direction)
	y += lengthdir_y(distance,_direction)
}

function Chance(_chance){
	/// @description Chance(percent)
	/// @param percent

	// Returns true or false depending on RNG
	// ex: 
	//		Chance(0.7);	-> Returns true 70% of the time

	return _chance > random(1);
}
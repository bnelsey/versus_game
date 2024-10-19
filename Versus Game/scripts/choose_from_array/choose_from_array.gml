// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_from_array(_array){
	return _array[ irandom_range(0,array_length(_array)-1) ]
}
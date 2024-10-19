/// @description dbg(first_part,second_part)
/// @param first_part
/// @param second_part
function dbg() {
	// this is for bulk debug messages


	var i, arg;
	str = ""

	if argument_count == 1
	{
	    show_debug_message(argument[0])     
	    exit
	}


	for (i = 0; i < argument_count; i += 1;)
	{    
	    if i&1 //i is odd
	    {
	        str += ": " + string(argument[i])
	        show_debug_message(str) 
	        str = ""
	    }
	    else //i is even
	        str += string(argument[i])
	}




}

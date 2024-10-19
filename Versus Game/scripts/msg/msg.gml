/// @description msg(first_part,second_part)
/// @param first_part
/// @param second_part
function msg() {
	// this is for bulk debug messages

	if os_type != os_windows
	    exit

	var i, arg;
	str = ""
	for (i = 0; i < argument_count; i += 1;)
	{    
	    if i&1 //i is odd
	        str += string(argument[i]) + "\n"  
	    else //i is even
	        str += string(argument[i]) + ": "   
	}
	show_message(str)



}

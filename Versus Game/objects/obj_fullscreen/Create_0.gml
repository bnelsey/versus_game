
gpu_set_texfilter(true);
if os_browser != browser_not_a_browser
{
	alarm[1] = room_speed * 0.25
	base_width = room_width;
	base_height = room_height;
	width = base_width;
	height = base_height;	
}
else
{
	instance_destroy()	
}
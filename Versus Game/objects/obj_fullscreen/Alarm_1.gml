/// @description Insert description here
// You can write your code in this editor

alarm[1] = room_speed * 1

// old scale canvas trick
if (browser_width != width || browser_height != height)
{
	width = min(base_width, browser_width);
	height = min(base_height, browser_height);
	scale_canvas(base_width, base_height, width, height, false);
}

exit

// updated scale_canvas trick that for some reason doesn't work anymore
//if (browser_width != width || browser_height != height)
{
	window_set_size(browser_width,browser_height)
	width = browser_width
	height = browser_height
	window_center()
}
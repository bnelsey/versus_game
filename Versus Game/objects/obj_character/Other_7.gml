/// @description pause last frame if not idle


if sprite_index != sprite_idle and loop == false
{
	image_index = image_number-1;
	image_speed = 0;
}
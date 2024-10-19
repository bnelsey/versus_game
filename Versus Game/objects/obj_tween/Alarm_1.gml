/// @description Insert description here
// You can write your code in this editor


if steps_left > 0
	alarm[1] = 1
else
{
	if destroy_target_after
	{
		dbg("destroyed target obj with sprite", sprite_get_name(targetobj.sprite_index))
		instance_destroy(targetobj)
	}
	instance_destroy()
}

var _amount = steps_left / steps_total;

if not instance_exists(targetobj)
{
	instance_destroy()
}
else
{
	targetobj.x = tween(targetx, startx, _amount, ease_type)
	targetobj.y = tween(targety, starty, _amount, ease_type)
	
	targetobj.image_xscale = tween(targetxscale, startxscale, _amount, ease_type)
	targetobj.image_yscale = tween(targetyscale, startyscale, _amount, ease_type)
	targetobj.image_alpha = tween(targetalpha, startalpha, _amount, ease_type)
}

//dbg("amount",_amount)
//dbg(targetobj.x,targetobj.y)
steps_left -= 1
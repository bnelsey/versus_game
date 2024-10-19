/// @description initialize


if safety_checks
{
	var _other_tween = find_tween_with_targetobj(id, targetobj);

	if _other_tween != noone
	{
		msg("found other tween!")
		instance_destroy(_other_tween)
	}

	if not instance_exists(targetobj)
	{
		instance_destroy()
		exit	
	}
}

visible = true
alarm[1] = 1
startx = targetobj.x
starty = targetobj.y
startxscale = targetobj.image_xscale
startyscale = targetobj.image_yscale
startalpha = targetobj.image_alpha
steps_left = steps_total


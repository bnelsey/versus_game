/// array_count(type, start_delay, delay_before_next_action, data_array)
/// adds an action to the queue
/// Arguments:
///	  - function accepts an array as its only argument
///   - array format: type, start_delay, delay_before_next_action, other_data1, other_data2
///   - type: find under obj_action -> enum ACTION
///   - start_delay: delay before starting this action
///   - delay_before_next_action: delay before starting the next action
///   - data_array: varies per action

// format is: SFX, [attacker.x,attacker.y,attacker.depth-1,spr_fx_charge,1,attacker, c_aqua,true,room_speed]
function action_sfx(_makex,_makey,_depth, _sprite,_image_speed,_follow_target, _xscale,  _hspeed, _vspeed, _image_blend, _anim_once, _timer){	
	
	array_push(obj_action.actions, [SFX,[_makex,_makey,_depth, _sprite,_image_speed,_follow_target,_xscale,  _hspeed, _vspeed, _image_blend, _anim_once, _timer]])
	
	if obj_action.alarm[1] < 0 and obj_action.alarm[2] < 0
		obj_action.alarm[1] = 1
}

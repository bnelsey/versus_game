/// array_count(type, start_delay, delay_before_next_action, data_array)
/// adds an action to the queue
/// Arguments:
///	  - function accepts an array as its only argument
///   - array format: type, start_delay, delay_before_next_action, other_data1, other_data2
///   - type: find under obj_action -> enum ACTION
///   - start_delay: delay before starting this action
///   - delay_before_next_action: delay before starting the next action
///   - data_array: varies per action

// format is: tween_object( _data_array[0], _data_array[1],  _data_array[2], _data_array[3], _data_array[4])
function action_move(_object_id,_targetx,_targety,_steps_total){	
	
	array_push(obj_action.actions, [MOVE_OBJECT,[_object_id,_targetx,_targety,_object_id.image_xscale, _object_id.image_yscale, _object_id.image_alpha,_steps_total]])
	
	if obj_action.alarm[1] < 0 and obj_action.alarm[2] < 0
		obj_action.alarm[1] = 1
}

function action_move_ext(_object_id,_targetx,_targety,_targetxscale, _targetyscale, _targetalpha,_steps_total){	
	
	array_push(obj_action.actions, [MOVE_OBJECT,[_object_id,_targetx,_targety,_targetxscale, _targetyscale, _targetalpha,_steps_total]])
	
	if obj_action.alarm[1] < 0 and obj_action.alarm[2] < 0
		obj_action.alarm[1] = 1
}
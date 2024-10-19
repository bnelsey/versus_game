/// @description tween_object(_object_id,_targetx,_targety,_targetxscale, _targetyscale, _targetalpha,_steps_total,_start_delay)
/// @param _object_id
/// @param _targetx
/// @param _targety
/// @param _targetxscale
/// @param _targetyscale
/// @param _targetalpha
/// @param _steps_total
/// @param _start_delay
function tween_object(_object_id,_targetx,_targety,_targetxscale, _targetyscale, _targetalpha, _steps_total,_start_delay){
	new_tween = instance_create_depth(0,0,0,obj_tween)
	new_tween.targetobj = _object_id
	new_tween.targetx = _targetx
	new_tween.targety = _targety
	new_tween.targetxscale = _targetxscale
	new_tween.targetyscale = _targetyscale
	new_tween.targetalpha = _targetalpha
	new_tween.steps_total = _steps_total	
	new_tween.alarm[0] = max(1, _start_delay)
	//obj_game.player_hand_current_id = 0
	//obj_game.player_hand_current = obj_game.player_hand_list[0]
	return new_tween
}
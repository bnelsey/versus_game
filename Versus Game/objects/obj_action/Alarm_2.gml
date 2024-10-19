/// @description perform action
// array format: type, start_delay, delay_before_next_action, [other_data1, other_data2]

var _action_type = actions[0][0];
var _data_array = actions[0][1];
alarm[1] = 1 // instant do next action unless if delay action is used

// data1 is instance ID most of the time
// data2 and 3 will usually be x and y location
switch(_action_type)
{
	case DELAY:
		//dbg("action delay", _data_array[0])
		alarm[1] = _data_array[0]
	break
	
	case CHANGE_HP:
		if _data_array[0]
			obj_game.righthp -= _data_array[1]
		else
			obj_game.lefthp -= _data_array[1]
			
		if obj_game.righthp < 0
			 obj_game.righthp = 0
		if obj_game.lefthp < 0
			 obj_game.lefthp = 0
	break
	
	case DESTROY_OBJECT:
		if instance_exists(_data_array[0])
		{
			dbg("destroy object with sprite", sprite_get_name(_data_array[0].sprite_index))
			instance_destroy(_data_array[0])
		}
	break
	
	case MOVE_OBJECT:		
		if instance_exists(_data_array[0])
		{
			tween_object( _data_array[0], _data_array[1],  _data_array[2], _data_array[3], _data_array[4], _data_array[5], _data_array[6], 0)	
		}
	break
	case FADE_OBJECT:		
		if instance_exists(_data_array[0])
		{
			tween_object( _data_array[0], _data_array[0].x,  _data_array[0].y, _data_array[1], _data_array[2], _data_array[3], _data_array[4], 0)	
		}
	break
	
	
	case CHANGE_SPRITE:
		_data_array[0].sprite_index = _data_array[1]
		_data_array[0].image_index = 0
		_data_array[0].image_speed = _data_array[2]
		_data_array[0].loop = false
	break;
	
	
	case CHANGE_SPRITE_LOOP:
		_data_array[0].sprite_index = _data_array[1]
		_data_array[0].image_index = 0
		_data_array[0].image_speed = _data_array[2]
		_data_array[0].loop = true
	break;
	
	
	
	case SFX:		
		//_makex,_makey,_depth, _sprite,_image_speed,_follow_target, _hspeed, _vspeed, _image_blend, _anim_once, _timer
		var _newsfx = instance_create_depth(_data_array[0],_data_array[1],_data_array[2], obj_sfx);
		
		_newsfx.sprite_index = _data_array[3]
		_newsfx.image_speed = _data_array[4]
		if _data_array[5] != noone
		{
			_newsfx.follow_target = _data_array[5]
			_newsfx.xoffset = _newsfx.x - _data_array[5].x
			_newsfx.yoffset = _newsfx.y - _data_array[5].y
		}
			
			
		_newsfx.image_xscale = _data_array[6]	
		_newsfx.image_yscale = abs(_data_array[6])
		_newsfx.hspeed = _data_array[7]		
		_newsfx.vspeed = _data_array[8]
		//msg("_data_array", _data_array, "_data_array[7]", _data_array[7])
		
		_newsfx.image_blend = _data_array[9]
		_newsfx.anim_once = _data_array[10]		
		_newsfx.alarm[0] = _data_array[11]
		
	break;
	
	case SOUND_PLAY:
		dbg("sound play")
		audio_play_sound(_data_array[0], 1, _data_array[1])		
	break;
	
	case DEBUG_MESSAGE:
		show_message(_data_array[0])	
	break;
	
	case DEBUG_PRINT:
		dbg(_data_array[0])	
	break;
	case SET_VISIBLE:
		dbg("set instance visible", _data_array[0])
		_data_array[0].visible = _data_array[1]
	break;
	case SET_ALARM:
		_data_array[0].alarm[_data_array[1]] = _data_array[2]
	break;
	case CHANGE_ANGLE:
		_data_array[0].image_angle = _data_array[1]
	break;	
	case SPIN:
		_data_array[0].image_angle_speed = _data_array[1]
	break;	
	case MIRROR:
		_data_array[0].image_xscale *= -1
	break;	
	
	case CHANGE_SPRITE_ANGLE:
		_data_array[0].sprite_index = _data_array[1]
		_data_array[0].image_index = 0
		_data_array[0].image_speed = _data_array[2]
		_data_array[0].image_angle = _data_array[3]
	break;
	
	case GOTO_ROOM:
		room_goto(_data_array[0])	
	break;
}



array_shift(actions) // remove first element in array since it's already used above
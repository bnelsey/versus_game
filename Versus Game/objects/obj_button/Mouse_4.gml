/// @description Insert description here
// You can write your code in this editor


		
switch(button_type)
{
	case BUTTON.TEST:
		
	break;
	case BUTTON.GENERIC:	
	
	break;
	case BUTTON.CHARACTER_SELECT:	
	
		// disable buttons on the same side
		with(obj_button)
		{
			if other.button_left == button_left
			{
				if sprite_index == spr_button_character_select
				{
					image_index = 0	
				}
			}
		}
		
		// if this button was for the left side
		if button_left
		{
			obj_game.character_left.sprite_index = obj_game.character_sprites[button_id, ANIM.IDLE]
			obj_game.player_left_selected = button_id
			obj_game.character_left.type = button_id
		}
		else
		{
			obj_game.character_right.sprite_index = obj_game.character_sprites[button_id, ANIM.IDLE]	
			obj_game.player_right_selected = button_id
			obj_game.character_right.type = button_id
		}
		
		
		image_index = 1
	break;	
	case BUTTON.FIGHT:
	
		with(obj_button)
		{
			if button_type == BUTTON.CHARACTER_SELECT
				instance_destroy()
		}
		var _static_obj =  find_object_with_sprite(obj_static,spr_character_select_text);
		new_tween = tween_object(_static_obj,_static_obj.x,_static_obj.y,1,1,0,room_speed/2,0)
		new_tween.destroy_target_after = true
		
		_static_obj =  find_object_with_sprite(obj_static,spr_title);
		new_tween = tween_object(_static_obj,_static_obj.x,_static_obj.y-500,1,1,0,room_speed/2,0)
		new_tween.destroy_target_after = true
		
		
		tween_object(obj_game.topbar,0,-600,1,1,1,room_speed*2,0)
		tween_object(obj_game.bottombar,0,960,1,1,1,room_speed*2,0)
		//action_add(DESTROY_OBJECT,[self])
		
		obj_game.alarm[1] = room_speed * 2
		
		//action_add(MOVE_OBJECT,[self,x,y,5,5,0,room_speed/2])
		new_tween = tween_object(self,x,y,5,5,0,room_speed/2,0)
		new_tween.ease_type = EASE_IN_QUAD
		new_tween.destroy_target_after = true
		
		/*
		action_add(DELAY,[room_speed])
		action_move(obj_game.character_left, room_width/2,obj_game.character_left.y,room_speed/4)
		action_add(DELAY,[room_speed])
		action_move(obj_game.character_right, room_width/2,obj_game.character_left.y,room_speed/4)
		*/
	break;
}
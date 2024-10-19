// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_character_positions(_damage){
		// reset
		action_move(attacker,attacker.xstart, attacker.ystart, room_speed/2)	
		
		var _round_end = false;
		if (defender == character_left) and (lefthp - _damage <= 0)
		{
			winner = character_right
			_round_end = true	
		}
		if (defender == character_right) and (righthp - _damage <= 0)
		{
			winner = character_left
			_round_end = true	
		}
		
		if _round_end == false
		{
			action_move(defender,defender.xstart, defender.ystart, room_speed/2)				
			action_add(DELAY, room_speed/4)
			action_add(SPIN, [attacker,0])
			action_add(SPIN, [defender,0])
			action_add(CHANGE_SPRITE_ANGLE, [attacker,attacker.sprite_idle,0.1,0])
			action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_idle,0.1,0])
			action_add(SET_ALARM, [obj_game,2,room_speed/8])
		}
		else
		{
			action_add(DELAY, room_speed/4)
			action_add(SPIN, [attacker,0])
			action_add(CHANGE_SPRITE_ANGLE, [attacker,attacker.sprite_idle,0.1,0])
			action_add(FADE_OBJECT, [defender, defender.image_xscale, defender.image_yscale, 0, room_speed])
			action_add(SET_ALARM, [obj_game,3,room_speed*2])
						
			var _winnerspr = instance_create_depth(winner.xstart, winner.ystart + 200, -999, obj_static);
			_winnerspr.sprite_index = spr_winner
			_winnerspr.image_alpha = 0
			//action_add(DELAY, room_speed)
			action_add(FADE_OBJECT, [_winnerspr, _winnerspr.image_xscale, _winnerspr.image_yscale, 1, room_speed])

		}
}
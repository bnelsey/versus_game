/// @description character actions


switch(current_attack)
{
	case ATTACK.STAB1:
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_stab,0.2])
		action_move(attacker,attacker.x + 400*attacker.image_xscale, attacker.y, room_speed/4)
		action_add(DELAY, room_speed/12)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage])
		action_add(CHANGE_SPRITE, [defender,defender.sprite_hurt,0.2])
		action_sfx(defender.x,defender.y,defender.depth-10,spr_fx_hit_slash,1,defender, defender.image_xscale*8, 0,0, c_white,true,room_speed)
		action_move(defender,defender.x - 100*defender.image_xscale, defender.y, room_speed/8)
		action_add(DELAY, room_speed/8)
		
		// reset
		reset_character_positions(attacker.damage)
	break;
	
	case ATTACK.DOWN1:
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_down,0.1])
		action_move(attacker,attacker.x + 400*attacker.image_xscale, attacker.y, room_speed/2)
		
		action_add(DELAY, room_speed/6)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*1.5])
		action_sfx(defender.x,defender.y,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		action_sfx(attacker.x,attacker.y,attacker.depth-10,spr_fx_crescent,1,attacker, attacker.image_xscale*8, 0,0, c_white,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,defender.image_xscale*45])
		action_move(defender,defender.x - 100*defender.image_xscale, defender.y+50, room_speed/4)
		action_add(DELAY, room_speed/4)
		
		
		// reset
		reset_character_positions(attacker.damage*1.5)
	break;
	case ATTACK.UPPER1:
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_upper,0.1])
		action_move(attacker,attacker.x + 400*attacker.image_xscale, attacker.y, room_speed/3)
		action_add(DELAY, room_speed/6)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*2])
		action_sfx(defender.x,defender.y,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		action_sfx(attacker.x,attacker.y,attacker.depth-10,spr_fx_upper,1,attacker, attacker.image_xscale*8, 0,0, #FF9999,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,defender.image_xscale*-45])
		action_move(defender,defender.x - 100*defender.image_xscale, defender.y-200, room_speed/6)
		action_add(DELAY, room_speed/6)
		action_move(defender,defender.x - 120*defender.image_xscale, defender.y, room_speed/3)
		action_add(DELAY, room_speed/3)
		
		// reset
		reset_character_positions(attacker.damage*2)
	break;
	
	case ATTACK.SHOOT1:
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_shoot,0.1])
		action_move(attacker,attacker.x + 100 *attacker.image_xscale, attacker.y, room_speed/3)		
		color = #FFFF99
		action_sfx(attacker.x,attacker.y,attacker.depth-10,spr_fx_charge,1,attacker, attacker.image_xscale*6, 0,0, color,true,room_speed)
		action_add(DELAY, room_speed/4)
		
		action_sfx(attacker.x,attacker.y,attacker.depth-10,spr_fx_fireball,1,noone, attacker.image_xscale*6,30*attacker.image_xscale,0, color,false,room_speed/4)
		
		action_move(attacker,attacker.xstart, attacker.ystart, room_speed/2)
		action_move(defender,defender.xstart, defender.ystart, room_speed/2)
		
		action_add(DELAY, room_speed/4)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*3])	
		action_sfx(defender.x,defender.y,defender.depth-10,spr_fx_fireball_explode,1,defender, defender.image_xscale*6, 0,0, color,true,room_speed)
		action_move(defender,defender.x + 200 *attacker.image_xscale, attacker.y, room_speed/3)	
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,0])
		action_add(DELAY, room_speed/3)
		
		// reset
		reset_character_positions(attacker.damage*3)
	break;
	
	
	case ATTACK.SPIN1:
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_spin,0.1])
		action_add(SPIN, [attacker,attacker.image_xscale*-45])
		action_move(attacker,attacker.x, attacker.y-800, room_speed/2)		
		action_add(DELAY, room_speed/6)
		action_move(attacker,attacker.x + 400*attacker.image_xscale, attacker.y, room_speed/2)
		
		action_add(DELAY, room_speed/6)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*2.5])
		action_sfx(defender.x,defender.y,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		//action_sfx(attacker.x,attacker.y,attacker.depth-10,spr_fx_crescent,1,attacker, attacker.image_xscale*8, 0,0, c_white,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,defender.image_xscale*45])
		action_move(defender,defender.x - 100*defender.image_xscale, defender.y+50, room_speed/4)
		action_add(DELAY, room_speed/4)
		
		
		// reset
		reset_character_positions(attacker.damage*2.5)
	break;
	case ATTACK.SPIN2:
		action_add(CHANGE_SPRITE_LOOP, [attacker,attacker.sprite_attack_spin,0.2])
		action_move(attacker,attacker.x - 200*attacker.image_xscale, attacker.y, room_speed/4)
		action_add(DELAY, room_speed/6)
		action_move(attacker,attacker.x + 600*attacker.image_xscale, attacker.y-50, room_speed/2)
		
		action_add(DELAY, room_speed/6)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*2.5])
		action_sfx(defender.x,defender.y,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		//action_sfx(attacker.x,attacker.y,attacker.depth-10,spr_fx_crescent,1,attacker, attacker.image_xscale*8, 0,0, c_white,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,defender.image_xscale*45])
		action_move(defender,defender.x - 100*defender.image_xscale, defender.y+50, room_speed/4)
		action_add(DELAY, room_speed/4)
		
		
		// reset
		reset_character_positions(attacker.damage*2.5)
	break;
	case ATTACK.RAPID1:
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_stab,0.2])
		action_move(attacker,attacker.x + 800*attacker.image_xscale, attacker.y, room_speed/4)
		action_add(DELAY, room_speed/8)
		
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*1])
		action_sfx(defender.x+100*defender.image_xscale,defender.y,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,0])
		action_move(defender,defender.x - 100*defender.image_xscale, defender.y, room_speed/4)
		action_add(DELAY, room_speed/8)
		
		action_add(MIRROR, attacker)
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_down,0.2])
		action_move_ext(attacker,attacker.x + 200*attacker.image_xscale, attacker.y, -attacker.image_xscale, 1, 1, room_speed/4)
		
		action_add(DELAY, room_speed/6)
		action_add(MIRROR, defender)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*2])
		action_sfx(defender.x-200*defender.image_xscale,defender.y,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,0])
		action_move_ext(defender,defender.x, defender.y, -defender.image_xscale, 1, 1, room_speed/4)
		action_add(DELAY, room_speed/4)
		
		
		// reset
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_idle,0.2])
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_idle,0.2,0])
		action_add(MIRROR, attacker)		
		action_add(MIRROR, defender)
		reset_character_positions(attacker.damage*2.5)
	break;
	case ATTACK.RAPID2:
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_attack_down,0.2])
		action_move(attacker,attacker.x + 400*attacker.image_xscale, attacker.y, room_speed/4)
		action_add(DELAY, room_speed/8)
		
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*1])
		action_sfx(defender.x+100*defender.image_xscale,defender.y-30,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,0])
		action_move(defender,defender.x - 100*defender.image_xscale, defender.y, room_speed/4)
		action_add(DELAY, room_speed/8)
		
		action_add(DELAY, room_speed/6)
		action_add(MIRROR, defender)
		action_add(CHANGE_HP, [attacker.image_xscale, attacker.damage*2])
		action_sfx(defender.x+50*defender.image_xscale,defender.y+30,defender.depth-10,spr_fx_hit_blunt,1,defender, defender.image_xscale*6, 0,0, c_white,true,room_speed)
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_hurt,0.1,0])
		action_move(defender,defender.x - 200*defender.image_xscale, defender.y, room_speed/4)
		action_add(DELAY, room_speed/4)
		
		
		// reset
		action_add(CHANGE_SPRITE, [attacker,attacker.sprite_idle,0.2])
		action_add(CHANGE_SPRITE_ANGLE, [defender,defender.sprite_idle,0.2,0])
		reset_character_positions(attacker.damage*2.5)
	break;
}


attacker = choose(character_left, character_right)
defender = character_left
if defender == attacker
	defender = character_right
	
	
current_attack = choose_from_array(character_attacks[attacker.type])
//current_attack = ATTACK.RAPID2
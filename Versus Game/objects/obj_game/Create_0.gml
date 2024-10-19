/// @description Insert description here
// You can write your code in this editor
randomize()
instance_create_depth(0,0,0,obj_fullscreen)
instance_create_depth(0,0,0,obj_action)


player_left_selected = irandom_range(0,3)//irandom_range(0,3)
player_right_selected = irandom_range(0,3)//irandom_range(0,3)

// never same initial choice
while(player_left_selected == player_right_selected)
{
	player_right_selected = irandom_range(0,1)//irandom_range(0,3)	
}

//player_left_selected = CHARACTER.CAT
//player_right_selected = CHARACTER.CAT




attacker = noone
defender = noone
winner = noone
current_attack = ATTACK.STAB1


fighting = false
hpmax = 100
lefthp = hpmax
righthp = hpmax

hpbar_width = 450
hpbar_height = 45
hpbar_margin = 20
hpbar_y = 386
hpbar_y2 = hpbar_y + hpbar_height
lefthp_x = hpbar_margin
lefthp_x2 = hpbar_margin + hpbar_width

righthp_x = room_width - hpbar_margin
righthp_x2 = room_width - hpbar_margin - hpbar_width

/*
new_button = instance_create_depth(room_width/2,1670,0,obj_button)	
new_button.button_type = BUTTON.TEST
new_button.sprite_index = btn_test
*/

topbar = instance_create_depth(0,-960,-9999,obj_static) // move to -600
topbar.sprite_index = spr_blackpage
topbar.image_alpha = 0
bottombar = instance_create_depth(0,1920,-9999,obj_static) // move to 960
bottombar.sprite_index = spr_blackpage
bottombar.image_alpha = 0




character_sprites[CHARACTER.TREE, ANIM.IDLE] = tree_idle
character_sprites[CHARACTER.TREE, ANIM.HURT] = tree_hurt
character_sprites[CHARACTER.TREE, ANIM.ATTACK_DOWN] = tree_attack_down
character_sprites[CHARACTER.TREE, ANIM.ATTACK_SPIN] = tree_attack_spin
character_sprites[CHARACTER.TREE, ANIM.ATTACK_STAB] = tree_attack_stab
character_sprites[CHARACTER.TREE, ANIM.ATTACK_SHOOT] = spr_blackpage
character_sprites[CHARACTER.TREE, ANIM.ATTACK_UPPER] = tree_attack_upper

character_sprites[CHARACTER.GHOST, ANIM.IDLE] = ghost_idle
character_sprites[CHARACTER.GHOST, ANIM.HURT] = ghost_hurt
character_sprites[CHARACTER.GHOST, ANIM.ATTACK_DOWN] = ghost_attack_down
character_sprites[CHARACTER.GHOST, ANIM.ATTACK_SPIN] = ghost_attack_spin
character_sprites[CHARACTER.GHOST, ANIM.ATTACK_SHOOT] = ghost_attack_shoot
character_sprites[CHARACTER.GHOST, ANIM.ATTACK_UPPER] = ghost_attack_upper


character_sprites[CHARACTER.MAN, ANIM.IDLE] = man_idle
character_sprites[CHARACTER.MAN, ANIM.HURT] = man_hurt
character_sprites[CHARACTER.MAN, ANIM.ATTACK_DOWN] = man_attack_down
character_sprites[CHARACTER.MAN, ANIM.ATTACK_SPIN] = spr_blackpage
character_sprites[CHARACTER.MAN, ANIM.ATTACK_STAB] = man_attack_stab
character_sprites[CHARACTER.MAN, ANIM.ATTACK_SHOOT] = spr_blackpage
character_sprites[CHARACTER.MAN, ANIM.ATTACK_UPPER] = spr_blackpage


character_sprites[CHARACTER.CAT, ANIM.IDLE] = cat_idle
character_sprites[CHARACTER.CAT, ANIM.HURT] = cat_hurt
character_sprites[CHARACTER.CAT, ANIM.ATTACK_DOWN] = cat_attack_down
character_sprites[CHARACTER.CAT, ANIM.ATTACK_SPIN] = spr_blackpage
character_sprites[CHARACTER.CAT, ANIM.ATTACK_STAB] = cat_attack_upper
character_sprites[CHARACTER.CAT, ANIM.ATTACK_SHOOT] = spr_blackpage
character_sprites[CHARACTER.CAT, ANIM.ATTACK_UPPER] = cat_attack_upper



character_sprites[CHARACTER.MAN, ANIM.IDLE] = man_idle

character_attacks[CHARACTER.TREE] = [ATTACK.UPPER1, ATTACK.STAB1, ATTACK.DOWN1, ATTACK.SPIN1]
character_attacks[CHARACTER.GHOST] = [ATTACK.UPPER1, ATTACK.DOWN1, ATTACK.SHOOT1, ATTACK.SPIN2]
character_attacks[CHARACTER.MAN] = [ATTACK.DOWN1, ATTACK.STAB1, ATTACK.RAPID1]
character_attacks[CHARACTER.CAT] = [ATTACK.STAB1, ATTACK.RAPID1, ATTACK.RAPID2]

character_damage[CHARACTER.TREE] = 10
character_damage[CHARACTER.GHOST] = 5
character_damage[CHARACTER.MAN] = 7
character_damage[CHARACTER.CAT] = 8




new_static = instance_create_depth(202,120,0,obj_static)
new_static.sprite_index = spr_title


new_static = instance_create_depth(85,687,0,obj_static)
new_static.sprite_index = spr_character_select_text



new_button = instance_create_depth(room_width/2,1450,0,obj_button)	
new_button.button_type = BUTTON.FIGHT
new_button.sprite_index = spr_fight_button	



vsep = 230
for(i=0;i<4;i+=1)
{
	// left character buttons
	new_button = instance_create_depth(151,1000 + i*vsep,0,obj_button)	
	new_button.button_type = BUTTON.CHARACTER_SELECT
	new_button.additional_sprite = character_sprites[i,ANIM.IDLE]	
	new_button.button_id = i
	new_button.button_left = true
	new_button.sprite_index = spr_button_character_select	
	if i == player_left_selected
		new_button.image_index = 1
	else
		new_button.image_index = 0
		
		
	// right character buttons
	new_button = instance_create_depth(722,1000 + i*vsep,0,obj_button)	
	new_button.button_type = BUTTON.CHARACTER_SELECT
	new_button.additional_sprite = character_sprites[i,ANIM.IDLE]
	new_button.additional_sprite_xscale *= -1
	new_button.button_id = i
	new_button.button_left = false
	new_button.sprite_index = spr_button_character_select
	if i == player_right_selected
		new_button.image_index = 1
	else
		new_button.image_index = 0
}



character_left = instance_create_depth(room_width*0.25,684,0,obj_character)
character_left.type = player_left_selected
character_left.sprite_index = character_sprites[player_left_selected,ANIM.IDLE]	
character_left.sprite_idle = character_left.sprite_index
character_left.image_index = 1


character_right = instance_create_depth(room_width*0.75,684,0,obj_character)
character_right.type = player_right_selected
character_right.sprite_index = character_sprites[player_right_selected,ANIM.IDLE]	
character_right.sprite_idle = character_right.sprite_index



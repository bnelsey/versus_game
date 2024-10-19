/// @description initialize obj_characters

dbg("initialize obj characters")



character_sprites[CHARACTER.TREE, ANIM.IDLE] = tree_idle
character_sprites[CHARACTER.TREE, ANIM.RUN] = rename5
character_sprites[CHARACTER.TREE, ANIM.HURT] = tree_hurt
character_sprites[CHARACTER.TREE, ANIM.ATTACK_DOWN] = tree_attack_down
character_sprites[CHARACTER.TREE, ANIM.ATTACK_SPIN] = tree_attack_spin
character_sprites[CHARACTER.TREE, ANIM.ATTACK_STAB] = tree_attack_stab
character_sprites[CHARACTER.TREE, ANIM.ATTACK_UPPER] = tree_attack_upper


character_left.damage = character_damage[player_left_selected]
character_left.sprite_idle = character_sprites[player_left_selected, ANIM.IDLE]
character_left.sprite_hurt = character_sprites[player_left_selected, ANIM.HURT]
character_left.sprite_attack_down = character_sprites[player_left_selected, ANIM.ATTACK_DOWN]
character_left.sprite_attack_spin = character_sprites[player_left_selected, ANIM.ATTACK_SPIN]
character_left.sprite_attack_stab = character_sprites[player_left_selected, ANIM.ATTACK_STAB]
character_left.sprite_attack_upper = character_sprites[player_left_selected, ANIM.ATTACK_UPPER]
character_left.sprite_attack_shoot = character_sprites[player_left_selected, ANIM.ATTACK_SHOOT]

character_right.damage = character_damage[player_right_selected]
character_right.sprite_idle = character_sprites[player_right_selected, ANIM.IDLE]
character_right.sprite_hurt = character_sprites[player_right_selected, ANIM.HURT]
character_right.sprite_attack_down = character_sprites[player_right_selected, ANIM.ATTACK_DOWN]
character_right.sprite_attack_spin = character_sprites[player_right_selected, ANIM.ATTACK_SPIN]
character_right.sprite_attack_stab = character_sprites[player_right_selected, ANIM.ATTACK_STAB]
character_right.sprite_attack_upper = character_sprites[player_right_selected, ANIM.ATTACK_UPPER]
character_right.sprite_attack_shoot = character_sprites[player_right_selected, ANIM.ATTACK_SHOOT]


attacker = choose(character_left, character_right)
defender = character_left
if defender == attacker
	defender = character_right

current_attack = choose_from_array(character_attacks[attacker.type])
alarm[2] = 1


fighting = true


lefthp = hpmax
righthp = hpmax
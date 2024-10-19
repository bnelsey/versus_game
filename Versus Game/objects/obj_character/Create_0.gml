/// @description Insert description here
// You can write your code in this editor

image_speed = 0.1
character_left = true
type = CHARACTER.TREE
loop = false
damage = 0
image_angle_speed = 0

if x > room_width/2
{
	character_left = false
	image_xscale = -1
}




sprite_idle = spr_blackpage
sprite_run = spr_blackpage
sprite_hurt = spr_blackpage
sprite_attack_down = spr_blackpage
sprite_attack_spin = spr_blackpage
sprite_attack_stab = spr_blackpage
sprite_attack_upper = spr_blackpage
sprite_attack_shoot = spr_blackpage
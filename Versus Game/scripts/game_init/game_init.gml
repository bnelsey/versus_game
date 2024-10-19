// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_init(){

	// affects character select order
	enum CHARACTER
	{
		TREE,
		GHOST,
		MAN,
		CAT
	}

	enum ANIM 
	{
		IDLE,
		RUN,
		HURT,
		ATTACK_DOWN,
		ATTACK_SPIN,
		ATTACK_STAB,
		ATTACK_UPPER,
		ATTACK_SHOOT
	}
	
	
	enum BUTTON
	{
		GENERIC,
		CHARACTER_SELECT,
		FIGHT,
		TEST
	
	}
	
	enum ATTACK
	{
		DOWN1,
		SPIN1,
		SPIN2,
		STAB1,
		UPPER1,
		SHOOT1,
		RAPID1,
		RAPID2
	}


	room_goto(rm_game)
}
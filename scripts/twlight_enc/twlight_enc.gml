/// idk i made up the name twilight encounters

function twlight_green_enc() : enc_set() constructor {
	debug_name	=	"GREEN"
	enemies = [
		new twl_green(),
	]

	bgm_fancy = true; // New
	bgm_fancytitle = "Doctor - George Buzinkai"

	flavor = "* Enemies floated in!"
	
	bgm = mus_doctor;
    
    target_calculation = ENC_TARGET.ALL
}

function twl_green() : enemy() constructor{
	name = "Square1"
	obj = o_actor_e_test
	turn_object = o_turn_green;
	
	// stats
	hp =		1
	max_hp =	1
	attack =	1
	defense =	0
	status_effect = "Green"
    freezable = true
    carrying_money = 0
    
    mercy = 0
	
    // sprites
    s_idle = spr_default_alt_1
    s_spare = spr_default_alt_1
    s_hurt = spr_default_alt_1
    
}
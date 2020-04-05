var esquerda	= keyboard_check(vk_left)	|| keyboard_check(ord("A"));
var direita		= keyboard_check(vk_right)	|| keyboard_check(ord("D"));
hsp = direita-esquerda;

if(hsp != 0){
	image_xscale = hsp;
}
hsp *= velocidade_max;

if(habilitado){
	if(hsp != 0){
		sprite_index = s_jeffinho_walk;
	}
	else{
		sprite_index = s_jeffinho_idle;
	}
	if (place_meeting(x + hsp, y, oSolido)) { 
		while (!place_meeting(x + sign(hsp), y, oSolido)) {
			x += sign(hsp); 
		}
		hsp = 0; 
	} 
	x+= hsp;

	vsp += grav; 
	if (place_meeting(x, y + vsp, oSolido)) {
		while (!place_meeting(x, y + sign(vsp), oSolido)) {
			y += sign(vsp); 
		} 
		vsp = 0; 
	}
	y += vsp;
	
	
	if(keyboard_check_pressed(vk_space)){
		vsp -= 7;
	}
	if(keyboard_check_pressed(ord("P"))){
		instance_create_depth(x+(image_xscale*15),y-32,0,oGiz);
	}


}


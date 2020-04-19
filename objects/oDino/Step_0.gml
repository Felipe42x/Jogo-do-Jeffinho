if(!esperando and vida_dino > 0){
	if(place_meeting(x+(lado*alcance_dino),y,oJeffinho)){
		if(pode_atacar){
			pode_atacar = false;
			alarm[1] = room_speed;
			sprite_index = s_dinossauro_attack;
			var hit = instance_create_depth(x,y,depth,oHitInimigo);
			hit.velocidade_move = 8*lado;
			hit.damage = 20;
		}
	}
	else{
		if(sprite_index != s_dinossauro_move){
			sprite_index = s_dinossauro_move;
		}
		x += image_xscale*velocidade;
	}
}

if(vida_dino <= 0){
	image_speed		= 0;
	sprite_index	= s_dinossauro_hurt;
	image_index		= 0;
	image_alpha		-= 0.01;
} 

if(image_alpha <= 0){
	instance_destroy();
}

vsp += grav; 
if (place_meeting(x, y + vsp, oSolido)) {
	while (!place_meeting(x, y + sign(vsp), oSolido)) {
		y += sign(vsp); 
	} 
	vsp = 0; 
}
y += vsp;
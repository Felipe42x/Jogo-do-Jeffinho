if(sprite_index == s_dinossauro_attack){
	sprite_index = s_dinossauro_idle;
	if(oJeffinho.x > x and image_xscale == negativo){
		image_xscale = -negativo;
	}
	else{
		if(oJeffinho.x < x and image_xscale == -negativo){
			image_xscale = negativo;
		}
	}
}

if(sprite_index == s_dinossauro_hurt){
	pode_atacar = true;
	sprite_index = s_dinossauro_idle;
}
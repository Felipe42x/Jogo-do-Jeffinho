if(bateu_na_espera != other.id){
	bateu_na_espera = other.id;
	esperando = true;
	alarm[0] = room_speed*tempo_esperar;
	if(sprite_index != s_dinossauro_idle){
		sprite_index = s_dinossauro_idle;
	}
}
vsp += .3;
if (place_meeting(x, y + vsp, oSolido)) {
	while (!place_meeting(x, y + sign(vsp), oSolido)) {
		y += sign(vsp); 
	} 
	vsp = 0; 
}
y += vsp;
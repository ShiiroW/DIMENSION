if (interacted) {
	a = Scr_Approach(a, 0.01, 0.5);
	if (a >= 0.35) {
		a2 = Scr_Approach(a2, 0.02, 1);	
	}
	
}else {
	a = Scr_Approach(a, 0.01, 0);
	a2 = Scr_Approach(a2, 0.02, 0);
}
if (phase == FADEPHASE.IN) {
	var aSpd = 1 / fadeIn;
	a = Scr_Approach(a, aSpd, 1);
	if (a == 1) phase = FADEPHASE.PAUSE;
}else if (phase == FADEPHASE.PAUSE) {
	pause--;
	if (pause == 0) {
		phase = FADEPHASE.OUT;	
		room_goto(goto_room);
	}
}else if (phase == FADEPHASE.OUT) {
	var aSpd = 1 / fadeOut;
	a = Scr_Approach(a, aSpd, 0);
	if (a == 0) instance_destroy();
}
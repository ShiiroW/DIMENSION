if (draw_heal != -1) {
	
	draw_set_color(c_lime)
	
	if (abs(firstY - 60 - actualY) < 10) {
		a = Scr_Approach(a, 0.1, 0);
		if (a == 0) {
			a = 1;
			draw_set_alpha(a);
			instance_destroy();
			return;
		}
	}
	
	draw_set_alpha(a);
	actualY = Scr_Approach(actualY, 1, firstY - 60);
	draw_text(firstX - 40, actualY, "+"+string(draw_heal));
	draw_set_alpha(1);
	
}
if (draw_damage != -1) {
	
	draw_set_color(c_red)
	
	if (abs(firstY - 40 - actualY) < 10) {
		a = Scr_Approach(a, 0.1, 0);
		if (a == 0) {
			draw_damage = -1;
			a = 1;
			draw_set_alpha(a);
			return;
		}
	}
	
	draw_set_alpha(a);
	actualY = Scr_Approach(actualY, 1, firstY - 40);
	draw_text(firstX - 40, actualY, string(-draw_damage));
	draw_set_alpha(1);
	
}
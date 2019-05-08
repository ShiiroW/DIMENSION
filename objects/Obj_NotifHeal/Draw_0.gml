draw_set_color(amount >= 0 ? c_lime : c_red);

if (abs(ystart - distance - y) < 10) {
	a = Scr_Approach(a, 0.1, 0);
	if (a == 0) {
		a = 1;
		draw_set_alpha(a);
		instance_destroy();
		return;
	}
}

draw_set_alpha(a);
y = Scr_Approach(y, text_speed, ystart - distance);
draw_text(xstart, y, (amount >= 0 ? "+" : "") + string(amount));
draw_set_alpha(1);
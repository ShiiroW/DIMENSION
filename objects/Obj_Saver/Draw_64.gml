var offset = 200;
	
draw_set_alpha(a);
draw_set_color(c_black);
draw_rectangle(0, 0, window_get_width(), window_get_height(), false);
	
if (a >= 0.35) {
		
	var waveLength = 20;
	var waveDuration = 2;
		
	draw_set_alpha(a2);
	draw_set_font(Fnt_Menu);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	Scr_Draw_Text_Outline(Scr_Center(0, "x") , Scr_Center(0, "y") - 75, "Sauvegarder ?", 4);
	if (selected == 0) draw_set_color(c_yellow);
	Scr_Draw_Text_Outline(Scr_Center(0, "x") + (selected == 0 ? Scr_WaveSeed(-waveLength/2, waveLength/2, waveDuration, 0, time) : 0) + waveLength/2 - offset, Scr_Center(0, "y") + 40, "Oui", 4);
	draw_set_color(c_white);
	if (selected == 1) draw_set_color(c_yellow);
	Scr_Draw_Text_Outline(Scr_Center(0, "x") + (selected == 1 ? Scr_WaveSeed(-waveLength/2, waveLength/2, waveDuration, 0, time) : 0) + waveLength/2 + offset, Scr_Center(0, "y") + 40, "Non", 4);
		
}

draw_set_alpha(1);
time += 1000/60;
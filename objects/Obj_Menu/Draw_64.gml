draw_set_font(Fnt_Menu);

var space = 30;
var waveLength = 20;
var waveDuration = 2;

if (selected == 0) draw_set_color(c_yellow);
else			   draw_set_color(c_white);

draw_set_valign(fa_center);

draw_text(Scr_Center(Scr_StringWidth("Charger", global.fontMetrics_menu), "x") + (selected == 0 ? Scr_WaveSeed(-waveLength/2, waveLength/2, waveDuration, 0, time) : 0) + waveLength/2, Scr_Center(0, "y") - font_get_size(Fnt_Menu) - space, "Charger");

if (selected == 1) draw_set_color(c_yellow);
else			   draw_set_color(c_white);
draw_text(Scr_Center(Scr_StringWidth("Nouvelle Partie", global.fontMetrics_menu), "x") + (selected == 1 ? Scr_WaveSeed(-waveLength/2, waveLength/2, waveDuration, 0, time) : 0) + waveLength/2, Scr_Center(0, "y"), "Nouvelle Partie");

if (selected == 2) draw_set_color(c_yellow);
else			   draw_set_color(c_white);
draw_text(Scr_Center(Scr_StringWidth("Quitter", global.fontMetrics_menu), "x") + (selected == 2 ? Scr_WaveSeed(-waveLength/2, waveLength/2, waveDuration, 0, time) : 0) + waveLength, Scr_Center(0, "y") + font_get_size(Fnt_Menu) + space, "Quitter");

time += 1000/60;
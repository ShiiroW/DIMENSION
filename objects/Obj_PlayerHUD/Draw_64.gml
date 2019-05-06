var hpBarSize = 500;
var yOffset = 20;
var margin = 2;

draw_set_color(make_color_rgb(60, 60, 60));
draw_roundrect(Scr_Center(hpBarSize, "x") - margin, yOffset - margin, Scr_Center(hpBarSize, "x") + hpBarSize + margin, yOffset + 30 + margin, false)

draw_set_color(c_gray);
draw_roundrect(Scr_Center(hpBarSize, "x"), yOffset, Scr_Center(hpBarSize, "x") + hpBarSize, yOffset + 30, false);

draw_set_color(make_color_hsv(-power((global.maxHp/2 - savedHp) / global.maxHp * 7, 3) + 42.5, 255, 255));
draw_roundrect(Scr_Center(hpBarSize, "x"), yOffset, Scr_Center(hpBarSize, "x") + lerp(0, hpBarSize, savedHp / global.maxHp), yOffset + 30, false);

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_set_font(Fnt_hpbar)
Scr_Draw_Text_Outline(Scr_Center(hpBarSize, "x") + hpBarSize - 15 , yOffset + 17, string(ceil(savedHp)) + " / " + string(ceil(global.maxHp)), 1);
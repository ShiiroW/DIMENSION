var hpBarSize = 22 * 3;
var yOffset = 20;

draw_set_color(c_white);
draw_rectangle(Scr_Center(hpBarSize, "x"), yOffset, Scr_Center(hpBarSize, "x") + hpBarSize, yOffset + 6, false);

draw_set_color(make_color_hsv(Scr_Clamp(-power((global.maxHp/2 - savedHp) / global.maxHp * 10, 3) + 42.5, 8, 80), 255, 255));
draw_rectangle(Scr_Center(hpBarSize, "x"), yOffset, Scr_Center(hpBarSize, "x") + 3 * round(global.hp / (global.maxHp / 22)), yOffset + 6, false);

draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_center);
draw_set_font(Fnt_hpbar)
Scr_Draw_Text_Outline(Scr_Center(hpBarSize, "x") + hpBarSize - 3 , yOffset + 17, string(ceil(savedHp)) + " / " + string(ceil(global.maxHp)), 1);
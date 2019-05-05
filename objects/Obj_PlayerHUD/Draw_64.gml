var hpBarSize = 300;

draw_set_color(c_gray);
draw_rectangle(Scr_Center(hpBarSize, "x"), 0, Scr_Center(hpBarSize, "x") + hpBarSize, 30, false);

draw_set_color(c_lime);
draw_rectangle(Scr_Center(hpBarSize, "x"), 0, Scr_Center(hpBarSize, "x") + hpBarSize * (global.hp/global.maxHp), 30, false);
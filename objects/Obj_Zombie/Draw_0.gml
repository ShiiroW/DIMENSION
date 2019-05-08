draw_self();

var hpBarSize = 22 * 3;
var yOffset = -100;

draw_set_color(c_white);
draw_rectangle(x - hpBarSize / 2, y + yOffset / 2, x + hpBarSize / 2, y + yOffset / 2 + 4, false);

draw_set_color(make_color_hsv(-power((maxHp/2 - hp) / maxHp * 7, 3) + 42.5, 255, 255));
draw_rectangle(x - hpBarSize / 2, y + yOffset / 2, (x - hpBarSize / 2) + 3 * round(hp / (maxHp / 22)), y + yOffset / 2 + 4, false);

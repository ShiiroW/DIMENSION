draw_self();

var hpBarSize = 60;
var yOffset = -100;
var margin = 2;

draw_set_color(make_color_rgb(60, 60, 60));
draw_roundrect(x - hpBarSize / 2 - margin, y + yOffset / 2 - margin, x + hpBarSize / 2, y + yOffset / 2 + 4 + margin, false)

draw_set_color(c_gray);
draw_roundrect(x - hpBarSize / 2, y + yOffset / 2, x + hpBarSize / 2, y + yOffset / 2 + 4, false);

draw_set_color(make_color_hsv(-power((maxHp/2 - hp) / maxHp * 7, 3) + 42.5, 255, 255));
draw_roundrect(x - hpBarSize / 2, y + yOffset / 2, x + lerp(- hpBarSize / 2, hpBarSize / 2, hp / maxHp), y + yOffset / 2 + 4, false);

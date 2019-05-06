var c = draw_get_color()
draw_set_color(c_black);
for (var i = -argument3; i <= argument3; i++) {
	draw_text(argument0, argument1 + i, argument2);	
	draw_text(argument0 + i, argument1, argument2);
	draw_text(argument0 + i, argument1 + i, argument2);
	draw_text(argument0 - i, argument1 + i, argument2);
	draw_text(argument0 + i, argument1 - i, argument2);
}
draw_set_color(c);
draw_text(argument0, argument1, argument2);
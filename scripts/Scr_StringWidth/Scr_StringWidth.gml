var str = argument0;
var fnt = argument1;

var w = 0;

for (var i = 0; i < string_length(str); i++) {
	w += ds_map_find_value(fnt, string_char_at(str, i)) + ds_map_find_value(fnt, "gap");
}
w -= ds_map_find_value(fnt, string_char_at(str, i));
return w;
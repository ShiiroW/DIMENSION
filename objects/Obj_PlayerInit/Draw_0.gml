var fntmenu_table = ds_map_create();
for (var i = 32; i <= 255; i++) { //PLAGE ASCII ETENDUE
	draw_set_font(Fnt_Menu);
	ds_map_set(fntmenu_table, chr(i), string_width(chr(i)));
	ds_map_set(fntmenu_table, "gap", string_width("aa")-string_width("a")*2);
}
global.fontMetrics_menu = fntmenu_table;

instance_destroy();
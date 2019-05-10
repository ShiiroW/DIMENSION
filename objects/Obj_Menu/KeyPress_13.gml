if (selected == 0) {
	if (file_exists("savefile.gm")) {
		Scr_Load();
	}else selected++;
}
if (selected == 1) {
	var inst = instance_create_depth(x, y, depth, Obj_FadeTransition);
	inst.fadeIn = 50;
	inst.pause = 20;
	inst.fadeOut = 50;
	inst.goto_room = 2;
}else if (selected == 2) game_end();
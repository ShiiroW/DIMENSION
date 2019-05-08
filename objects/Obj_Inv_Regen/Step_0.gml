if (use && !deactivate) {
	Scr_SetHp(global.hp + 3);
	draw_heal = 30;
	firstX = Obj_Player.x + (Obj_Player.sprite_width * Obj_Player.image_xscale / 2);
	firstY = Obj_Player.y;
	actualY = firstY;
	deactivate = true;
}
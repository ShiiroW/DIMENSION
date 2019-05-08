if (use) {
	Scr_SetHp(global.hp + 30);
	var inst = instance_create_depth(Obj_Player.x + (Obj_Player.sprite_width * Obj_Player.image_xscale / 2) - 40, Obj_Player.y, Obj_Player.depth - 10, Obj_NotifHeal)
	inst.amount = 30;
	inst.distance = 60;
	instance_destroy()
}
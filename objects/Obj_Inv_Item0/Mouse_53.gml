if (!cooldownPhase) {
	var inst = instance_create_depth(Obj_Player.x,Obj_Player.y, Obj_Player.depth, Obj_Ray);
	inst.image_yscale = Obj_Player.range + range;
	inst.image_angle = 90 - radtodeg(Obj_Player.angle);
	inst.y -= sin(inst.image_angle) * (Obj_Player.sprite_width * Obj_Player.image_yscale / 2);
	inst.handler = id;
}
cooldownPhase = true;
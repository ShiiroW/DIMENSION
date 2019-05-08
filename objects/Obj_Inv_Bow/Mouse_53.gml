if (!cooldownPhase) {
	var inst = instance_create_depth(Obj_Player.x, Obj_Player.y, depth, Obj_Arrow);
	inst.handler = id;
	inst.image_angle = radtodeg(Obj_Player.aimAngle);
}
cooldownPhase = true;
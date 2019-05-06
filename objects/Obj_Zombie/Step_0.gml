if (hp > 0) {
angle = arctan2(Obj_Player.y - y,Obj_Player.x - x);
x += cos(angle) * maxSpeed;
y += sin(angle) * maxSpeed;
}else {
	image_alpha = Scr_Approach(image_alpha, 0.07, 0);
	if (image_alpha == 0) instance_destroy();
}
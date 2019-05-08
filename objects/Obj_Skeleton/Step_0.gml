//Si le joueur est à moins de 400 pixels du monstre, il aggro
//Il se rapproche jusqu'à 300 pixels du joueur max
//Plus le joueur s'approche, plus le mob a de chance de reculer, 
//à partir de 200 pixels (1% de chance), à 80 pixels (10%)
if (hp > 0) {
	var dist = distance_to_object(Obj_Player);
	if (dist < aggro_distance || aggro) {
		aggro = true;
		randomPoint = false;
		var angle = arctan2(Obj_Player.y - y,Obj_Player.x - x);
		if (dist > 400 && !triggerBackwards) {
			x += cos(angle) * maxSpeed;
			y += sin(angle) * maxSpeed;
		}
		if (dist < 300 && Scr_Chance(Scr_Map(dist, 0, 300, 15, 3))) triggerBackwards = true;
	
		if (triggerBackwards) {
			x -= cos(angle) * maxSpeed;
			y -= sin(angle) * maxSpeed;	
			if (dist >= 300) triggerBackwards = false;
		}
	
		if (!cooldownPhase) {
			if (Scr_Chance(15)) {
				var inst = instance_create_depth(x, y, depth, Obj_Arrow_Mob);
				inst.handler = id;
				
				var playerVelX = cos(Obj_Player.angle) * Obj_Player.velocity;
				var playerVelY = sin(Obj_Player.angle) * Obj_Player.velocity;
				
				var arrowTimeToTouch = distance_to_object(Obj_Player) / inst.velocity + random_range(-7, 7);
				
				var previsionX = Obj_Player.x + playerVelX * arrowTimeToTouch + playerVelX + random_range(-5, 5);
				var previsionY = Obj_Player.y + playerVelY * arrowTimeToTouch + playerVelY + random_range(-5, 5);
				
				var previsionAngle = arctan2(previsionY - y, previsionX - x);
				
				inst.image_angle = - radtodeg(previsionAngle);
				cooldownPhase = true;
			}
		}else {
			frame++;
			if (frame >= cooldown * 60) {
				cooldownPhase = false;
				frame = 0;
			}
		}
	}
	
	if (!aggro && !randomPoint) {
		if (Scr_Chance(1)) {
			randomPoint = true;
			randomPointPosX = random_range(x - 175, x + 175);
			randomPointPosY = random_range(y - 175, y + 175);
		}
	}
	
	if (randomPoint && !aggro) {
		var angle = arctan2(randomPointPosY - y, randomPointPosX - x);
		x += cos(angle) * maxSpeed;
		y += sin(angle) * maxSpeed;	
		if (distance_to_point(randomPointPosX, randomPointPosY) <= maxSpeed) randomPoint = false;
	}
}else {
	image_alpha = Scr_Approach(image_alpha, 0.07, 0);
	if (image_alpha == 0) instance_destroy();
}

if (rayTouched != noone) {
	Scr_Damage(damage);
	rayTouched = noone;
}
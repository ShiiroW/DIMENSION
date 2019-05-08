if (canMove) {
	
	if (keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_down)) {
		velocity = Scr_Approach(velocity, moveSpeed/acceleration, moveSpeed)
		var newAngle = arctan2(keyboard_check(vk_down) - keyboard_check(vk_up), keyboard_check(vk_right) - keyboard_check(vk_left));
		angle = newAngle;

	}else velocity = Scr_Approach(velocity, moveSpeed/drag, 0);
	
	if (velocity == 0) {
		image_speed = 0;
		sprite_index = S_Player_Idle;
		image_index = 0;
	}else {
		sprite_index = S_Player_Right;
		image_speed = velocity / moveSpeed;
	}
	
	aimAngle = - arctan2(mouse_y - y, mouse_x - x);
	
	if (aimAngle <= pi / 4 && aimAngle >= -pi/4) { //A DROITE
		image_xscale = 1;
		if ((angle >= 3*pi / 4 && angle <= pi) || (angle >= -pi && angle <= -pi / 1.5)) image_speed *= -1;
	}
	if ((aimAngle >= 3*pi / 4 && aimAngle <= pi) || (aimAngle >= -pi && aimAngle <= -pi / 1.5)) { //A GAUCHE
		image_xscale = -1;
		if (angle <= pi / 4 && angle >= -pi/4) image_speed *= -1;
	}
	if (aimAngle >= -3*pi / 4 && aimAngle <= -pi/4) { //EN BAS
		//image_yscale = -2;
		if (angle <= 3*pi / 4 && angle >= pi/4) image_speed *= -1;
	}
	
	if (aimAngle <= 3*pi / 4 && aimAngle >= pi/4) { //EN HAUT
		//image_yscale = 2;
		if (angle >= -3*pi / 4 && angle <= -pi/4) image_speed *= -1;
	}
	
	x += cos(angle) * velocity;
	y += sin(angle) * velocity;
	
}
if (invincibilityPhase) {
	invincibilityFramesCounter++;
	if (invincibilityFramesCounter == invincibilityFrames) {
		invincibilityFramesCounter = 0;
		invincibilityPhase = false;
	}
}
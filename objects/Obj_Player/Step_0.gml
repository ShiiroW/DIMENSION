if (canMove) {
	
	
	
	if (keyboard_check(ord("Z")) || keyboard_check(ord("Q")) || keyboard_check(ord("D")) || keyboard_check(ord("S"))) {
		velocity = Scr_Approach(velocity, moveSpeed/acceleration, moveSpeed)
		var newAngle = arctan2(keyboard_check(ord("S")) - keyboard_check(ord("Z")), keyboard_check(ord("D")) - keyboard_check(ord("Q")));
		angle = newAngle;

	}else velocity = Scr_Approach(velocity, moveSpeed/drag, 0);
	
	if (velocity == 0) {
		image_speed = 0;
		image_index = 0;
	}else {
		sprite_index = S_Player_Right;
		image_speed = velocity / moveSpeed;
	}
	
	aimAngle = - arctan2(mouse_y - y, mouse_x - x);
	
	if (aimAngle <= pi / 4 && aimAngle >= -pi/4) { //A DROITE
		sprite_index = S_Player_Right;
		image_xscale = 1;
		if ((angle >= 3*pi / 4 && angle <= pi) || (angle >= -pi && angle <= -pi / 1.5)) image_speed *= -1;
		if (velocity == 0) sprite_index = S_Player_Idle
	}
	if ((aimAngle >= 3*pi / 4 && aimAngle <= pi) || (aimAngle >= -pi && aimAngle <= -pi / 1.5)) { //A GAUCHE
		sprite_index = S_Player_Right;
		image_xscale = -1;
		if (angle <= pi / 4 && angle >= -pi/4) image_speed *= -1;
		if (velocity == 0) sprite_index = S_Player_Idle
	}
	if (aimAngle >= -3*pi / 4 && aimAngle <= -pi/4) { //EN BAS
		image_xscale = 1;
		var tempImg = image_index;
		if (aimAngle >= -3*pi / 4 && aimAngle <= -pi/2) {
			sprite_index = S_Player_DownLeft;
			if (velocity == 0) sprite_index = S_Player_DownLeft_Idle
		}else {
			sprite_index = S_Player_DownRight;	
			if (velocity == 0) sprite_index = S_Player_DownRight_Idle
		}
		image_index = tempImg;
		
		if (angle <= 3*pi / 4 && angle >= pi/4) image_speed *= -1;
	}
	
	if (aimAngle <= 3*pi / 4 && aimAngle >= pi/4) { //EN HAUT
		image_xscale = 1;
		if (aimAngle <= 3*pi / 4 && aimAngle >= pi/2) {
			sprite_index = S_Player_UpLeft;
			if (velocity == 0) sprite_index = S_Player_UpLeft_Idle
		}else {
			sprite_index = S_Player_UpRight;	
			if (velocity == 0) sprite_index = S_Player_UpRight_Idle
		}
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
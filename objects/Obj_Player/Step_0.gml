if (canMove) {
	if (keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_down)) {
		velocity = Scr_Approach(velocity, moveSpeed/acceleration, moveSpeed)
		var newAngle = arctan2(keyboard_check(vk_down) - keyboard_check(vk_up), keyboard_check(vk_right) - keyboard_check(vk_left));
		angle = newAngle;

	}else velocity = Scr_Approach(velocity, moveSpeed/drag, 0);

	x += cos(angle) * velocity;
	y += sin(angle) * velocity;
}
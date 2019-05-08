if (frame > duration * 60) {
	instance_destroy();
	return;
}
x += dcos(- image_angle) * velocity;
y += dsin(- image_angle) * velocity;
frame++;
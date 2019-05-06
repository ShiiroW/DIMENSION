if (frame > duration * 60) {
	instance_destroy();
	return;
}
x += cos(image_angle) * velocity;
y += sin(image_angle) * velocity;
frame++;
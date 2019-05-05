if (!open) {
	open = true;
	image_speed = sprite_get_speed(S_Chest);
}
if (image_index == sprite_get_number(S_Chest)) {
	image_speed = 0;
}
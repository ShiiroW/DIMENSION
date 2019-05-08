handler.rayTouched = other;
if (variable_instance_exists(handler, "firstX")) handler.firstX = x + (sprite_width * image_xscale / 2);
if (variable_instance_exists(handler, "firstY")) {
	handler.firstY = y;
	handler.actualY = handler.firstY;
}
instance_destroy();
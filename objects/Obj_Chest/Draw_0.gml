draw_self();
if (open && image_index >= 2 && !itemSummoned) {
	instance_create_depth(x, y-20, depth-1, item);
	itemSummoned = true;
}
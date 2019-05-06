draw_self();
if (open && image_index >= 2 && !itemSummoned) {
	var item = instance_create_depth(x, y-20, depth-1, Obj_Item1);
	itemSummoned = true;
}
Scr_AddItem(instance_create_depth(x, y, depth, Obj_Inv_Bow));
ds_list_add(global.takenitems, itemId);
instance_destroy();
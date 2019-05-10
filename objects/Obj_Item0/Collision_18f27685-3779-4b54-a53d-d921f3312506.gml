Scr_AddItem(instance_create_depth(x, y, depth, Obj_Inv_Item0));
ds_list_add(global.takenitems, itemId);
instance_destroy();
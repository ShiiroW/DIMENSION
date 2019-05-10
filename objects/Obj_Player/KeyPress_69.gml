var inst = instance_place(x + cos(aimAngle) * range, y + sin(aimAngle) * range, Obj_Interactable);
show_debug_message(inst != noone);
if (inst != noone) inst.interacted = true;
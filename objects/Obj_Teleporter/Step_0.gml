if (!place_meeting(x, y, Obj_Player)) collisionLastFrame = false;
else {
	collisionLastFrame = true;
	Scr_Room_Goto_Slide(40, slideDirection, goto_room);
}
if (!surface_exists(surface_start) || !surface_exists(surface_end)) {
	if (room != goto_room) {
		room_goto(goto_room);
		instance_destroy();
	}
}

frame++;

if (frame >= time) instance_destroy();
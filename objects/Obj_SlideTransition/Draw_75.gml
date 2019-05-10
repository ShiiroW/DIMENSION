surface_set_target(surface_end);
draw_clear(c_black);
draw_surface(application_surface, 0, 0);
surface_reset_target();

var x1, y1, x2, y2;
var width = display_get_gui_width();
var height = display_get_gui_height();

switch (slideDirection) {
	
	case SLIDEDIRECTION.LEFT: {
		x1 = (frame/time) * width;  y1 = 0;
		x2 = (-1 + frame/time) * width; y2 = 0;
		break;
	}
	case SLIDEDIRECTION.RIGHT: {
		x1 = (-frame/time) * width;     y1 = 0;
		x2 = (1-frame/time) * width;      y2 = 0;
		break;
	}
	case SLIDEDIRECTION.UP: {
		y1 = (frame/time) * height;  x1 = 0;
		y2 = (-1 + frame/time) * height; x2 = 0;
		break;
	}
	case SLIDEDIRECTION.DOWN: {
		y1 = (-frame/time) * height; x1 = 0;
		y2 = (1-frame/time) * height;      x2 = 0;
		break;
	}
	
}

show_debug_message(x2)

if (room != goto_room) {
	room_goto(goto_room);
	if (slideDirection == SLIDEDIRECTION.LEFT) {
		Obj_Player.x = room_width - Obj_Player.sprite_width;
	}else if (slideDirection == SLIDEDIRECTION.RIGHT) {
		Obj_Player.x = Obj_Player.sprite_width/2;
	}
	if (slideDirection == SLIDEDIRECTION.UP) {
		Obj_Player.x = (Obj_Player.sprite_height * Obj_Player.image_yscale) - 20;
	}
	if (slideDirection == SLIDEDIRECTION.DOWN) {
		Obj_Player.x = room_height - (Obj_Player.sprite_height * Obj_Player.image_yscale) - 20;
	}
}

draw_surface_stretched(surface_end, x2, y2, width, height);
draw_surface_stretched(surface_start, x1, y1, width, height);
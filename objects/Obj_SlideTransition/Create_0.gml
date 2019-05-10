frame = 0;

enum SLIDEDIRECTION {
	LEFT,
	UP,
	DOWN,
	RIGHT
}

surface_start = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
surface_end = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));

if (instance_number(Obj_SlideTransition) >= 2) {
	instance_destroy();
	return;
}

surface_set_target(surface_start);
draw_clear(c_black);
draw_surface(application_surface, 0, 0);
surface_reset_target();
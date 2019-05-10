if (variable_instance_exists(id, "surface_start")) {
	surface_free(surface_start);
	surface_free(surface_end);
}
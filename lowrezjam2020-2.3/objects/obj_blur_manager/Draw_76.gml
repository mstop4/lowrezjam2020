if (!surface_exists(surf_a)) {
	surf_a = surface_create(64, 64);
	if (surface_exists(surf_b)) {
		surface_set_target(surf_b);
		draw_clear_alpha(c_black, 0);
		surface_reset_target();
	}
}

if (!surface_exists(surf_b)) {
	surf_b = surface_create(64, 64);
	surface_set_target(surf_a);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}
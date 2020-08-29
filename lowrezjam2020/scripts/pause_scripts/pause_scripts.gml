function pause_game() {
	with (obj_particle_manager) {
		part_system_automatic_update(part_sys, false);
		part_system_automatic_update(part_star_sys, false);
	}
	
	with (obj_pause) {
		paused = true;
		if (!surface_exists(pause_surf)) {
			pause_surf = surface_create(64, 64);
		}
		
		surface_copy(pause_surf, 0, 0, application_surface);
		
		instance_deactivate_all(true);
		instance_activate_object(pause_menu);
		instance_activate_object(ctrl_id);
		instance_activate_object(obj_MCP);
		pause_menu.active = true;
		pause_menu.menu_alpha.v = 1;
	}
}

function pause_resume() {
	with (obj_pause) {
		paused = false;
		pause_menu.active = false;
		pause_menu.menu_alpha.v = 0;
		instance_activate_all();
	}
	
	with (obj_particle_manager) {
		part_system_automatic_update(part_sys, true);
		part_system_automatic_update(part_star_sys, true);
	}
}

function pause_quit() {
	instance_activate_all();
	ctrl_id.clear_all();
	room_goto(room_title);
}
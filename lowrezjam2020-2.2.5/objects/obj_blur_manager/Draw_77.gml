surface_set_target(passive_surf);
draw_clear_alpha(c_black, 0);

shader_set(shd_fade);
draw_surface(active_surf, 0, 0);
shader_reset();

surface_reset_target();

var _temp = active_surf;
active_surf = passive_surf;
passive_surf = _temp;
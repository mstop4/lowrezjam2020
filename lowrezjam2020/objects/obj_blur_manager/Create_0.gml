surf_a = surface_create(64, 64);
surf_b = surface_create(64, 64);

active_surf = surf_a;
passive_surf = surf_b;

u_fFadeFactor = shader_get_uniform(shd_fade, "u_fFadeFactor");
shader_set_uniform_f(u_fFadeFactor, fade_factor);
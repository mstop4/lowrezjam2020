alarm[0] = lifetime;
var _x = floor(x);
var _y = floor(y);

part_emit = part_emitter_create(obj_particle_manager.part_sys);
part_emitter_stream(obj_particle_manager.part_sys, part_emit, obj_particle_manager.part_bullet_trail, 1);
part_emitter_region(obj_particle_manager.part_sys, part_emit,_x,_x,_y,_y,ps_shape_rectangle,ps_distr_linear);

my_value = 1;
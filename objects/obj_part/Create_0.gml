/// @description Insert description here
// You can write your code in this editor

global.part_sys = part_system_create();

part_system_layer(global.part_sys, "Efeitos");

global.particula = part_type_create();

part_type_shape(global.particula, pt_shape_flare);
part_type_color3(global.particula, 8454140, 255, c_gray);
part_type_size(global.particula, .5, 1, 0, .2);
part_type_scale(global.particula, .4, .4);
part_type_alpha3(global.particula, 1, .5, .1);
part_type_speed(global.particula, .3, 3, -2, .5);
part_type_direction(global.particula, 0, 360, 0, 0);
part_type_gravity(global.particula, 0, 270);
part_type_orientation(global.particula, 0, 360, 0, 10, 1);
part_type_blend(global.particula, 0);
part_type_life(global.particula, room_speed, room_speed/2);

global.em = part_emitter_create(global.part_sys);


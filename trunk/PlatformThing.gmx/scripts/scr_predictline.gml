
part_type_shape(global.pt1,3);
part_type_size(global.pt1,0.50,0.50,0,0);
part_type_scale(global.pt1,1,1);
part_type_orientation(global.pt1,0,0,0,0,1);
part_type_direction(global.pt1,45,45,0,0);
part_type_speed(global.pt1,3,3,0,0);
part_type_gravity(global.pt1,0.03,270);
part_type_color3(global.pt1,65280,65280,16777215);
part_type_alpha3(global.pt1,1,1,0);
part_type_blend(global.pt1,0);
part_type_life(global.pt1,45,45);

part_particles_create(global.psmain,x,y,global.pt1,1);

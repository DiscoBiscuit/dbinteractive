global.psmain=part_system_create();

global.pt1=part_type_create();
part_type_shape(global.pt1,3);
//part_system_depth(global.psmain,1)
part_type_sprite(global.pt1,spr_part_tankbarrel,0,0,0)
part_type_size(global.pt1,0.75,1,0,0);
part_type_scale(global.pt1,1,1);
part_type_orientation(global.pt1,turretang-15,turretang+15,0,0,0);
part_type_direction(global.pt1,turretang-45,turretang+45,0,0);
part_type_speed(global.pt1,5,5,-0.25,0);
part_type_gravity(global.pt1,0,270);
part_type_color3(global.pt1,33023,65535,255);
part_type_alpha3(global.pt1,1,1,0);
part_type_blend(global.pt1,1);
part_type_life(global.pt1,5,10);

part_particles_create(global.psmain,l_plane_x(-8,0)+lengthdir_x(48,turretang),l_plane_y(-8,0)+lengthdir_y(48,turretang),global.pt1,8);

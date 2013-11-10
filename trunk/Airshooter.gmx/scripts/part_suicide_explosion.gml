global.suicide_explosion=part_system_create();

global.suicide_explosion_pt1=part_type_create();
part_type_shape(global.suicide_explosion_pt1,10);
part_type_size(global.suicide_explosion_pt1,0.25,0.50,0.02,0);
part_type_scale(global.suicide_explosion_pt1,1,1);
part_type_orientation(global.suicide_explosion_pt1,0,360,0,0.75,0);
part_type_direction(global.suicide_explosion_pt1,0,360,0,0);
part_type_speed(global.suicide_explosion_pt1,5,8,-0.75,0);
part_type_gravity(global.suicide_explosion_pt1,0,270);
part_type_color3(global.suicide_explosion_pt1,16777215,8454143,5329407);
part_type_alpha3(global.suicide_explosion_pt1,1,1,0);
part_type_blend(global.suicide_explosion_pt1,0);
part_type_life(global.suicide_explosion_pt1,30,30);

part_particles_create(global.suicide_explosion,x,y,global.suicide_explosion_pt1,8);

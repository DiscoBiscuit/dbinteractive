global.psmain=part_system_create();

global.pt1=part_type_create();
part_type_shape(global.pt1,6);
part_type_size(global.pt1,0.10,0.10,0.10,0);
part_type_scale(global.pt1,1,1);
part_type_orientation(global.pt1,0,0,0,0,0);
part_type_direction(global.pt1,0,360,0,0);
part_type_speed(global.pt1,0,0,-0.05,0);
part_type_gravity(global.pt1,0,270);
part_type_color3(global.pt1,16744448,16776960,16777215);
part_type_alpha3(global.pt1,0.50,0.25,0);
part_type_blend(global.pt1,0);
part_type_life(global.pt1,30,30);
if(global.particles == 1){
part_particles_create(global.psmain,x,y,global.pt1,1);
}

global.part_suicide_smoke1=part_system_create();

global.part_suicide_smoke_pt1=part_type_create();
part_type_shape(global.part_suicide_smoke_pt1,12);
part_type_size(global.part_suicide_smoke_pt1,0.25,0.50,0.02,0);
part_type_scale(global.part_suicide_smoke_pt1,1,1);
part_type_orientation(global.part_suicide_smoke_pt1,0,360,0,0.75,0);
part_type_direction(global.part_suicide_smoke_pt1,0,360,0,0);
part_type_speed(global.part_suicide_smoke_pt1,3,5,-0.25,0);
part_type_gravity(global.part_suicide_smoke_pt1,0,270);
part_type_color3(global.part_suicide_smoke_pt1,12632256,8421504,8421504);
part_type_alpha3(global.part_suicide_smoke_pt1,1,1,0);
part_type_blend(global.part_suicide_smoke_pt1,0);
part_type_life(global.part_suicide_smoke_pt1,45,60);

if(global.particles == 1){
part_particles_create(global.part_suicide_smoke1,x,y,global.part_suicide_smoke_pt1,4);
}

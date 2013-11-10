global.shieldrecharge=part_system_create();

global.shieldrechargept1=part_type_create();
part_type_shape(global.shieldrechargept1,6);
part_type_size(global.shieldrechargept1,2.50,3,0,0);
part_type_scale(global.shieldrechargept1,1,1);
part_type_orientation(global.shieldrechargept1,0,0,0,0,0);
part_type_direction(global.shieldrechargept1,0,360,0,0);
part_type_speed(global.shieldrechargept1,0.20,0.30,0,0);
part_type_gravity(global.shieldrechargept1,0,270);
part_type_color3(global.shieldrechargept1,16777215,16777079,16777215);
part_type_alpha3(global.shieldrechargept1,0.1,0.0,0);
part_type_blend(global.shieldrechargept1,0);
part_type_life(global.shieldrechargept1,2.50,5);

if(global.particles == 1){
part_particles_create(global.shieldrecharge,x,y,global.shieldrechargept1,1);
}

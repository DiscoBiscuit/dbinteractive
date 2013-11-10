
part_type_shape(global.tankbarrel1,3);
//part_system_depth(global.tankbarrelmain,1)
part_type_sprite(global.tankbarrel1,spr_part_tankbarrel,0,0,0)
part_type_size(global.tankbarrel1,0.75,1,0,0);
part_type_scale(global.tankbarrel1,1,1);
part_type_orientation(global.tankbarrel1,turretang-15,turretang+15,0,0,0);
part_type_direction(global.tankbarrel1,turretang-45,turretang+45,0,0);
part_type_speed(global.tankbarrel1,5,5,-0.25,0);
part_type_gravity(global.tankbarrel1,0,270);
part_type_color3(global.tankbarrel1,33023,65535,255);
part_type_alpha3(global.tankbarrel1,1,1,0);
part_type_blend(global.tankbarrel1,1);
part_type_life(global.tankbarrel1,5,10);


if(global.particles == 1){
part_particles_create(global.tankbarrelmain,argument0+lengthdir_x(argument2,turretang),argument1+lengthdir_y(argument2,turretang),global.tankbarrel1,8);
}

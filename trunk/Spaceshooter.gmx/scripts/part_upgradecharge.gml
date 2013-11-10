var partang;
partang = random_range(0,360)
part_type_shape(global.upgrade1,8);
part_type_size(global.upgrade1,0.25,0.50,0,0);
part_type_scale(global.upgrade1,1,1);
part_type_orientation(global.upgrade1,0,0,0,0,0);
part_type_direction(global.upgrade1,point_direction(turretx+lengthdir_x(64,partang),turrety+lengthdir_y(64,partang),turretx,turrety),point_direction(turretx+lengthdir_x(64,partang),turrety+lengthdir_y(64,partang),turretx,turrety),0,0);
part_type_speed(global.upgrade1,1,1.50,0.10,0);
part_type_gravity(global.upgrade1,0,270);
part_type_color3(global.upgrade1,32768,65280,16777215);
part_type_alpha3(global.upgrade1,0,0.50,0);
part_type_blend(global.upgrade1,0);
part_type_life(global.upgrade1,30,30);
if(global.particles == 1){
part_particles_create(global.upgrademain,turretx+lengthdir_x(64,partang),turrety+lengthdir_y(64,partang),global.upgrade1,1);
}

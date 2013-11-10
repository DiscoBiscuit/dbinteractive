
part_type_shape(global.upgradeburst1,6);
part_type_size(global.upgradeburst1,0.50,0.50,0.15,0);
part_type_scale(global.upgradeburst1,1,1);
part_type_orientation(global.upgradeburst1,0,0,0,0,0);
part_type_direction(global.upgradeburst1,0,0,0,0);
part_type_speed(global.upgradeburst1,0,0,0,0);
part_type_gravity(global.upgradeburst1,0,270);
part_type_color3(global.upgradeburst1,32768,65280,16777215);
part_type_alpha3(global.upgradeburst1,0,0.50,0);
part_type_blend(global.upgradeburst1,0);
part_type_life(global.upgradeburst1,30,30);
if(global.particles == 1){
part_particles_create(global.upgradeburst,turretx,turrety,global.upgradeburst1,1);
}

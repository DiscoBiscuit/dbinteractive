global.baddiechunk=part_system_create();

global.baddiechunkpt1=part_type_create();
part_system_depth(global.baddiechunk,1)
part_type_sprite(global.baddiechunkpt1,spr_part_chunk,0,0,1)
part_type_size(global.baddiechunkpt1,0.6,0.8,0,0);
part_type_scale(global.baddiechunkpt1,1,1);
part_type_orientation(global.baddiechunkpt1,0,360,0,0,0);
part_type_direction(global.baddiechunkpt1,chunkflingdir-45,chunkflingdir+45,0,0);
part_type_speed(global.baddiechunkpt1,5,8,0,0);
part_type_gravity(global.baddiechunkpt1,0,270);
part_type_alpha3(global.baddiechunkpt1,1,1,0);
part_type_blend(global.baddiechunkpt1,0);
part_type_life(global.baddiechunkpt1,180,360);

if(global.particles == 1){
part_particles_create(global.baddiechunk,x,y,global.baddiechunkpt1,irandom_range(0,4));
}

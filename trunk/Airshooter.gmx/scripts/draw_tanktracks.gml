if(point_distance(x+lengthdir_x(32,image_angle+180),y+lengthdir_y(32,image_angle+180),trail_lastx,trail_lasty)>4){
    part_system_depth(treads,1)
    treadstype = part_type_create();
    part_type_sprite(treadstype,spr_tanktrail,0,0,0)
    part_type_scale(treadstype,point_distance(x+lengthdir_x(32,image_angle+180),y+lengthdir_y(32,image_angle+180),trail_lastx,trail_lasty)/3,1)
    part_type_orientation(treadstype,point_direction(x+lengthdir_x(32,image_angle+180),y+lengthdir_y(32,image_angle+180),trail_lastx,trail_lasty),point_direction(x+lengthdir_x(32,image_angle+180),y+lengthdir_y(32,image_angle+180),trail_lastx,trail_lasty),0,0,0)
    part_type_life(treadstype,180,180)
    part_type_alpha2(treadstype,0.8,0)
    
    treadstype2 = part_type_create();
    part_type_sprite(treadstype2,spr_tanktrail,0,0,0)
    part_type_scale(treadstype2,point_distance(x+lengthdir_x(32,image_angle+180),y+lengthdir_y(32,image_angle+180),trail_lastx,trail_lasty)/3,1)
    part_type_orientation(treadstype2,point_direction(x+lengthdir_x(32,image_angle+180),y+lengthdir_y(32,image_angle+180),trail_lastx,trail_lasty),point_direction(x+lengthdir_x(32,image_angle+180),y+lengthdir_y(32,image_angle+180),trail_lastx,trail_lasty),0,0,0)
    part_type_life(treadstype2,180,180)
    part_type_alpha2(treadstype2,0.8,0)
    
    treadsemit = part_emitter_create(treads)
    treadsemit2 = part_emitter_create(treads)
    part_emitter_region(treads,treadsemit,x+lengthdir_x(40,image_angle+210),x+lengthdir_x(40,image_angle+210),y+lengthdir_y(40,image_angle+210),y+lengthdir_y(40,image_angle+210),0,0)
    part_emitter_burst(treads,treadsemit,treadstype,1)
    
    part_emitter_region(treads,treadsemit2,x+lengthdir_x(40,image_angle+150),x+lengthdir_x(40,image_angle+150),y+lengthdir_y(40,image_angle+150),y+lengthdir_y(40,image_angle+150),0,0)
    part_emitter_burst(treads,treadsemit2,treadstype2,1)
}

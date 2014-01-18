
var new,near;
near = instance_nearest(argument0,argument1,obj_room)
if(point_distance(argument0,argument1,near.x,near.y)>48 and point_distance(argument0,argument1,room_width/2,room_height/2)<800 and instance_number(obj_room)<40)
{
new = instance_create(argument0,argument1,obj_room)
new.dist = dist+1
ds_list_add(links,new)
ds_list_add(new.links,self)
}

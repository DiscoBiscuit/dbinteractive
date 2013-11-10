if(active==0)
{
var left,right,up,down;
pull = 1
left = instance_position(x-1,y,obj_block);
right = instance_position(x+sprite_width+1,y,obj_block);
up = instance_position(x,y-1,obj_block);
down = instance_position(x,y+sprite_height+1,obj_block);

if(instance_exists(left))
if(left.donut_type==donut_type and left.active==0)
{
left.pull = 1
}

if(instance_exists(right))
if(right.donut_type==donut_type and right.active==0)
{
right.pull = 1
}

if(instance_exists(up))
if(up.donut_type==donut_type and up.active==0)
{
up.pull = 1
}

if(instance_exists(down))
if(down.donut_type==donut_type and down.active==0)
{
down.pull = 1
}

}

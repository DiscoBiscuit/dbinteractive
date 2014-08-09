xxx = argument0
yyy = argument1
for (j=yyy;j>0;j-=1)
{
    if (ds_grid_get(obj_control.grid,xxx,j) == 0 and not (instance_exists(obj_donut_switch)) and not (ds_grid_get(obj_control.grid,xxx,j-1) == 0))
    {
        var xx = obj_control.grid_x+(xxx*obj_control.donut_width);
        var yy = obj_control.grid_y+(j*obj_control.donut_height);
        nn = instance_create(xx,yy-obj_control.donut_height,obj_donut_fall);
        nn.image_index = ds_grid_get(obj_control.grid,xxx,j-1);
        ds_grid_set(obj_control.grid,xxx,j-1,0);
    }
}

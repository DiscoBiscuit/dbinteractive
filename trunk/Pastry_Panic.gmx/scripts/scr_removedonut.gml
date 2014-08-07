
var grid,dx,dy,i,d,new;
grid = obj_control.grid_main;
dx = argument0;
dy = argument1;

ds_grid_set(grid,dx,dy,0);
for(i=dy;i>=0;i-=1)
{
    d = ds_grid_get(grid,dx,i);
    if(d!=0)
    {
        new = instance_create(toworld_x(dx),toworld_y(i),obj_fallingdonut)
        new.image_index = d;
        ds_grid_set(grid,dx,i,0);
    }
}

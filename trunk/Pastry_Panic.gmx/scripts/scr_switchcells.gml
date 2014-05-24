//scr_switchcells(grid,x1,y1,x2,y2)
var x1,y1,x2,y2,temp1,temp2,grid;
grid = argument0;
x1 = argument1;
y1 = argument2;
x2 = argument3;
y2 = argument4;
temp1 = ds_grid_get(grid,x1,y1);
temp2 = ds_grid_get(grid,x2,y2);
ds_grid_set(grid,x2,y2,temp1);
ds_grid_set(grid,x1,y1,temp2);

//scr_switchcells(grid,x1,y1,x2,y2)
var x1,y1,x2,y2,temp1,temp2;
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
temp1 = ds_grid_get(obj_control.grid_main,x1,y1);
temp2 = ds_grid_get(obj_control.grid_main,x2,y2);
scr_setdonut(x2,y2,temp1);
scr_setdonut(x1,y1,temp2);

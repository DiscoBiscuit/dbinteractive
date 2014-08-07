
var grid,newval;
grid = obj_control.grid_main;

for (i=0; i<obj_control.grid_width; i+=1)
{
    for (j=0; j<obj_control.grid_height; j+=1)
    {
        newval = ds_grid_get(grid,i,j);
        if(newval<0)
        {
            if(obj_control.matchcount<3)
            {
                ds_grid_set(grid,i,j,abs(newval));
            }
            else
            {
                scr_removedonut(i,j);
            }
        }
    }
}
obj_control.matchcount = 0;

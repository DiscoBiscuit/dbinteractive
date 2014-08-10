scr_findmatch(argument0,argument1)

for (i=0; i<obj_control.grid_width_cells; i+=1)
{
    for (j=0; j<obj_control.grid_height_cells; j+=1)
    {
        if(ds_grid_get(obj_control.pull,i,j)>0)
        {
            scr_findmatch(i,j);
        };
    };
};
var count;
count = 0
for (i=0; i<obj_control.grid_width_cells; i+=1)
{
    for (j=0; j<obj_control.grid_height_cells; j+=1)
    {
        if(ds_grid_get(obj_control.pull,i,j)>0)
        {
            count += 1;
        };
    };
};
if(count>=3)
{
    for (i=0; i<obj_control.grid_width_cells; i+=1)
    {
        for (j=0; j<obj_control.grid_height_cells; j+=1)
        {
            if(ds_grid_get(obj_control.pull,i,j)>0 and ds_grid_get(obj_control.grid,i,j) != 0)
            {
                ds_grid_set(obj_control.grid,i,j,0)
                obj_control.donutqueue[i] += 1;       
            };
        };
    };
}
ds_grid_clear(obj_control.pull,0)
scr_felldonuts();

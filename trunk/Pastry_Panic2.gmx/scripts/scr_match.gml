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
                if (obj_control.gamestart == 1)
                {
                    var xx = obj_control.grid_x+(i*obj_control.donut_width);
                    var yy = obj_control.grid_y+(j*obj_control.donut_height);
                    new = instance_create(xx,yy,obj_donut_match);
                    new.image_index = ds_grid_get(obj_control.grid,i,j);
                    ds_grid_set(obj_control.grid,i,j,0)
                    obj_control.donutqueue[i] += 1;
                    nn = instance_create(xx,yy,obj_score_fx);
                    nn.num = obj_control.score_perdonut;
                }
                else
                {
                    if (obj_control.startmatch == 0)
                    {
                        ds_grid_shuffle(obj_control.grid);
                        obj_control.startmatch = 1;
                    }
                }
            };
        };
    };
    scr_felldonuts();
}
ds_grid_clear(obj_control.pull,0)

//Handle donuts falling
for (i=0; i<grid_width; i+=1)
{
    for (j=1; j<grid_height; j+=1)
    {
        if (ds_grid_get(grid_main,i,j) == 0)
        {
            nnn = instance_create(grid_xoffset+(i*donut_width)+donut_xoffset,grid_yoffset+(j*donut_height)+donut_yoffset,obj_donut_active);
            nnn.image_index = ds_grid_get(grid_main,i,j-1);
            ds_grid_set(grid_main,i,j-1,0);
        };
    };
};


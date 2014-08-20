for (i=0;i<grid_width_cells;i+=1)
{
    for (j=0;j<grid_height_cells;j+=1)
    {
        if (ds_grid_get(grid,i,j) == 0 and not (ds_grid_get(grid,i,j-1) == 0))
        {
            var xx = grid_x+(i*donut_width);
            var yy = grid_y+(j*donut_height);
            nn = instance_create(xx,yy-donut_height,obj_donut_fall);
            nn.image_index = ds_grid_get(grid,i,j-1);
            if (obj_control.sprinkles[i,j-1])
            {
                nn.sprinkle = 1;
            }
            ds_grid_set(grid,i,j-1,0);
            obj_control.sprinkles[i,j-1] = 0;
        }
        if (ds_grid_get(grid,i,j) == 0 and obj_control.sprinkles[i,j])
        {
            obj_control.sprinkles[i,j] = 0;
        }
    }
}

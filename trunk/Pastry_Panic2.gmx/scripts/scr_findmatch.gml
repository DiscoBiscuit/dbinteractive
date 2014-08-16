var val;
val = ds_grid_get(grid,argument0,argument1)

//right
if (argument0 + 1 < grid_width_cells)
{
    if (ds_grid_get(grid,argument0+1,argument1) == val and val != 9)
    {
        ds_grid_set(pull,argument0+1,argument1,1);
    };
}
//up
if (argument1 - 1 >= 0)
{
    if (ds_grid_get(grid,argument0,argument1-1) == val and val != 9)
    {
        ds_grid_set(pull,argument0,argument1-1,1);
    };
}
//left
if (argument0 - 1 >= 0)
{
    if (ds_grid_get(grid,argument0-1,argument1) == val and val != 9)
    {
        ds_grid_set(pull,argument0-1,argument1,1);
    };
}
//down
if (argument1 + 1 < grid_height_cells)
{
    if (ds_grid_get(grid,argument0,argument1+1) == val and val != 9)
    {
        ds_grid_set(pull,argument0,argument1+1,1);
    };
}

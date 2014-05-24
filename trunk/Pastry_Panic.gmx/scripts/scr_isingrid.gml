var xx,yy;
xx = argument0;
yy = argument1;
if (xx > grid_xoffset
and xx < grid_xoffset + (grid_width*donut_width)
and yy > grid_yoffset
and yy < grid_yoffset + (grid_height*donut_height))
{
    return true;
};
else
{
    return false;
}

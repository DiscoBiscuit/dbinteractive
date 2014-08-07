
var grid,dx,dy,dt,i,cx,cy,c;
grid = obj_control.grid_main;
dx = argument0;
dy = argument1;
dt = abs(ds_grid_get(grid,dx,dy));
ds_grid_set(grid,dx,dy,-dt);

for(i=0;i<360;i+=90)
{
    cx = dx + round(cos(degtorad(i)));
    cy = dy - round(sin(degtorad(i)));
    if(validcell(cx,cy))
    {
        c = ds_grid_get(grid,cx,cy);
        if(c==dt and c>0)
        {
            scr_findmatch(cx,cy);
            ds_grid_set(grid,cx,cy,-dt);
            obj_control.matchcount += 1;
        }
    }
    
}

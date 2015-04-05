var hmod,dx,dy,chance;

randomize()

for(j=0;j<height;j++)
{
    for(i=0;i<width;i++)
    {
        hmod = (j mod 2)
        dx = xoff + (i + hmod/2)*hexw
        dy = yoff + j*hexh
        
        chance = max(0,640-point_distance(room_width/2,room_height/2,dx,dy))
        if(sqrt(irandom(640))>(chance/16)*min(1,irandom(10)))
        {
            grid[i,j]=-1
        }
        else
        {
            grid[i,j]= 5-min(5,floor( sqrt(irandom(36)) ))
        }
        active[i,j] = false
    }
}
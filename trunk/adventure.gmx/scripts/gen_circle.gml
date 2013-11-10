start_x = round(argument0)
start_y = round(argument1)
radius = max(1,abs(round(argument2)))
material = argument3
for(i=start_x-radius;i<=start_x+radius;i+=1)
{
    for(j=start_y-radius;j<=start_y+radius;j+=1)
    {
        if point_distance(i,j,start_x,start_y)<=radius
        {
            gen_block(i,j,material)
        }
    }
}

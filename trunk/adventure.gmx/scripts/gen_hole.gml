start_x = round(argument0)
start_y = round(argument1)
radius = max(1,abs(round(argument2)))
for(i=start_x-radius-7;i<=start_x+radius+7;i+=1)
{
    for(j=start_y-radius-7;j<=start_y+radius+7;j+=1)
    {
        if point_distance(i,j,start_x,start_y)<=radius
        {
            gen_block(i,j,0)
        }
        if i>=0 and i<width and j>=0 and j<height
        lum[i,j] = max(lum[i,j],clamp(round( 255-(point_distance(i,j,start_x,start_y)-radius)*36 ),0,255))
    }
}

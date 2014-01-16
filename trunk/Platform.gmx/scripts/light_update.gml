//light_update(light,x,y)

with(argument0)
{
    x = argument1
    y = argument2
    for(i=0;i<=360;i+=(360/prec))
    {
        dist[i] = ranger(x,y,i,radius)
    }
}

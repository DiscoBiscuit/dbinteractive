with(argument0)
{
    x = argument1
    y = argument2
    if(point_distance(x,y,xprevious,yprevious)>1)
    {
        for(i=0;i<=360;i+=(360/prec))
        {
            ranger(x,y,radius,i,true)
            dist[i] = lerp(global.xrd_d,dist[i],0.7)
        }
    }
}

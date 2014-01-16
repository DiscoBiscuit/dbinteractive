with(argument0)
{
    x = argument1
    y = argument2
    check = !check
    if(check==true)
    {
        for(i=0;i<=360;i+=(360/prec))
        {
            ranger(x,y,radius,i,true)
            dist[i] = global.xrd_d
        }
    }
}

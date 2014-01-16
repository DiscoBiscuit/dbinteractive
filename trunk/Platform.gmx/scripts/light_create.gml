var new;
new = instance_create(argument0,argument1,light)
with(new)
{
    radius = argument2
    falloff = argument3
    prec = argument4
    color = argument5
    
    flkr_col = color
    flkr_freq = 0
    flkr_dim = 0
    flkr_rad = 0
    flkr_r = 0
    
    for(i=0;i<=360;i+=(360/prec))
    {
        ranger(x,y,radius,i,true)
        dist[i] = global.xrd_d
    }
}
return new

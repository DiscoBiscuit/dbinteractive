// light_create(x,y,radius,penetration,falloff,precision,lerpspeed,color)

var new;
new = instance_create(argument0,argument1,light)
with(new)
{
    radius = argument2
    pen = argument3
    falloff = argument4
    prec = argument5
    lrp = argument6
    color = argument7
    on = argument8
    
    flkr_col = color
    flkr_freq = 0
    flkr_dim = 0
    flkr_rad = 0
    flkr_r = 0
    
    for(i=0;i<=360;i+=(360/prec))
    {
        dist[i] = ranger(x,y,i,radius)
        ldist[i] = dist[i]
    }
}
return new

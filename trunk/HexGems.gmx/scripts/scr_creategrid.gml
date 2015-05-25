ds_list_clear(hexes_clean)
ds_list_clear(hexes_infected)

with(obj_hex)
{
    instance_destroy()
}

for(j=0;j<height;j++)
{
    for(i=0;i<width;i++)
    {
        hmod = (j mod 2)
        dx = xoff + (i - hmod/2)*hexw
        dy = yoff + j*hexh
        
        chance = max(0,640-point_distance(room_width/2,room_height/2,dx,dy))
        //if(sqrt(irandom(640)) < (chance/16)*min(1,irandom(10)))
        {
            new = instance_create(dx,dy,obj_hex)
            new.gem = 3-min(3,floor( sqrt(irandom(36)) ))
            if(new.gem>1)
            {
                new.status = 2
            }
            ds_list_add(hexes_clean,new)
        }
    }
}

while(ds_list_size(hexes_infected)<game_num)
{
    ds_list_shuffle(hexes_clean)
    with(ds_list_find_value(hexes_clean,0))
    {
        var adjcount;
        adjcount = 0
        for(d=0;d<6;d+=1)
        {
            adj = get_adjacent(d)
            if(instance_exists(adj) and adj.status==1)
            {
                adjcount++
            }
        }
        if(adjcount>3)
        {
            gem = 0
            status = 1
            for(d=0;d<6;d+=1)
            {
                adj = get_adjacent(d)
                if(instance_exists(adj) and adj.status>0)
                {
                    adj.gem = 0
                    adj.status = 1
                }
            }
            infect(id)
        }
    }
}

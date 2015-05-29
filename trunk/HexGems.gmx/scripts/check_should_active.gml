
if(gem>0)
{
    activehex = id
    count = 0
    with(obj_hex)
    {
        counted = 0
        image_blend = c_white
    }
    counted = 1
    for(d=0;d<6;d+=1)
    {
        adj = get_adjacent(d)
        if(adj.gem == gem)
        {
            with(adj)
            {
                counted = 2
                check_near()
            }
        }
    }
    
    if(argument0==false)
    {
        with(obj_hex)
        {
            active = false
            if(counted>0)
            {
                count += 1
            }
        }
        if(count>2)
        {
            active = true
            with(obj_hex)
            {
                if(counted>0)
                {
                    image_blend = c_teal
                }
            }
        }
        else
        {
            active = false
        }
    }
    else
    {
        with(obj_hex)
        {
            if(counted>1)
            {
                var new;
                new = instance_create(x,y,obj_gembreak)
                new.gem = gem
                new.dest = activehex
                gem = 0
                status = 1
            }
        }
    }
}

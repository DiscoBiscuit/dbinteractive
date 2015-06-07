with(obj_control)
{
    var checklist,spreaded,adj,off;
    spreaded = false
    if(next_spread==0)
    {
        spreadturns += 1
        with(obj_hex)
        {
            if(gem==3 or gem==4)
            {
                lookout += 1
                if(lookout == 6)
                {
                    lookout = 0
                    lookout_smooth = -1
                }
            }
        }
        next_spread = spread_delay
        checklist = ds_list_create()
        ds_list_copy(checklist,hexes_infected)
        while(ds_list_size(checklist)>0 and spreaded==false)
        {
            ds_list_shuffle(checklist)
            with(ds_list_find_value(checklist,0))
            {
                off = irandom(6)
                for(d=0;d<6;d+=1)
                {
                    adj = get_adjacent(d+off)
                    if(instance_exists(adj) and adj.status==1)
                    {
                        spreaded = true
                        infect(adj)
                        break;
                    }
                }
            }
            if(spreaded==false)
            {
                ds_list_delete(checklist,0)
            }
        }
        ds_list_destroy(checklist)
    }
    next_spread -= 1
    clickturns += 1
}
obj_control.population = 0
obj_control.wood = 0
obj_control.food = 0

with(obj_node)
{
    if(building!=0)
    {
        var nb,val;
        
        //Check to see if the building has any gain relationships with its links
        for(i=0;i<ds_list_size(links);i+=1)
        {
            nb = (ds_list_find_value(links,i)).building
            if(nb!=building)
            {
            val = ds_map_find_value( buildings.gain[building] , nb )
            add_resource(val)
            }
        }
        
        //Check to see if the building has a gain relating to itself
        val = ds_map_find_value( buildings.gain[building] , building )
        add_resource(val)
    }
        
}

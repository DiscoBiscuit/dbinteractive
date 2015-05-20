with(argument0)
{
    status = 0
    if(gem>0)
    {
        new = instance_create(x,y,obj_gembreak)
        new.gem = gem
        new.dest = id
        gem = 0
    }
    ds_list_add(obj_control.hexes_infected,id)
    ds_list_delete(obj_control.hexes_clean,ds_list_find_index(obj_control.hexes_clean,id))
}
with(argument0)
{
    status = 2
    ds_list_add(obj_control.hexes_clean,id)
    ds_list_delete(obj_control.hexes_infected,ds_list_find_index(obj_control.hexes_infected,id))
}
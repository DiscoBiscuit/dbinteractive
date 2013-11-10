var new,ghost;
new = parent.controller

new.nextbuild = building
new.nextlevel = level
new.nextlevelupgrade = level
new.takespc = spc
ghost = instance_create(mouse_x,mouse_y,obj_node_buildghost)
ghost.sprite_index = ds_list_find_value(ds_map_find_value(buildings.sprite,building),level)
ghost.building = ds_list_find_value(ds_map_find_value(buildings.name,building),level)
inventory_insert("none",0,spc)

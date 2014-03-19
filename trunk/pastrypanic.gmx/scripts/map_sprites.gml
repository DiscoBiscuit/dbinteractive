{
    var no,i,ds_map;
    ds_map = argument0;
    no = sprite_create_from_screen(0,0,1,1,false,false,false,false);
    sprite_delete(no);
    for (i=0; i<no; i+=1) {
        if (sprite_exists(i)) {
            ds_map_add(ds_map,sprite_get_name(i),i);
        }
    }
}

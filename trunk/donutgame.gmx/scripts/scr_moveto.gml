//scr_moveto(x,y,spd)
if (global.moving == false)
{
    pt_newpath = path_add()
    mp_grid_clear_cell(global.movegrid,floor(x/1920*16),floor(y/1080*9));
    var newpath = mp_grid_path(global.movegrid,pt_newpath,x+60,y+60,argument0-60,argument1-60,false);
    if newpath == true
    {
        path_shift(pt_newpath,-60,-60);
        path_start(pt_newpath,argument2,path_action_stop,true);
        global.moving = true;
    }
    else
    {
        path_delete(pt_newpath);
        mp_grid_add_cell(global.movegrid,floor(x/1920*16),floor(y/1080*9));
    }
}

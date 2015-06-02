if(os_type==os_android)
{
    if(game_fullscreen==1)
    {
        view_wport[0] = display_get_height()/2;
        view_hport[0] = display_get_width()/2;
        surface_resize(application_surface, view_hport[0], view_wport[0]);
    }
    else
    {
        view_wport[0] = display_get_height();
        view_hport[0] = display_get_width();
        surface_resize(application_surface, view_hport[0], view_wport[0]);
    }
}
else
{
    if(game_fullscreen==1)
    {
        view_wport = display_get_width();
        view_hport = display_get_height();
        surface_resize(application_surface, view_wport[0], view_hport[0]); 
    }
    else
    {
        view_wport = display_get_width()/2;
        view_hport = display_get_height()/2;
        surface_resize(application_surface, view_wport[0], view_hport[0]);
    }
    window_set_fullscreen(game_fullscreen)
}

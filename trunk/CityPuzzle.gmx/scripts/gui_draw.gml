// gui_draw( controller_object )
// draws all windows associated with the controller object in the propper order

var new,size,size2,newelement;
size = ds_list_size(argument0.windows)

for(i=size-1;i>=0;i-=1)
{
    new = ds_list_find_value(argument0.windows,i)
    
    //execute the drawing function of the window
    with(new)
    {
        script_execute(func_draw)
        
        var size2;
        size2 = ds_list_size(new.elements)
        
        for(j=size2-1;j>=0;j-=1)
        {
            newelement = ds_list_find_value( new.elements, j )
            with( newelement )
            {
                script_execute( func_draw )
            }
        }
        
    }
}
draw_set_alpha(1)

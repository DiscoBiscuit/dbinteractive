var new,drawscript,hide;

new = argument0

hide = ds_map_find_value(new,"hide")
if(hide==0)
{

drawscript = ds_map_find_value(new,"draw")
dx = ds_map_find_value(new,"x")
dy = ds_map_find_value(new,"y")
dcolor = ds_map_find_value(new,"color")
dalpha = ds_map_find_value(new,"alpha")

if(dcolor==0){dcolor=c_white}
if(dalpha==0){dalpha=1}

draw_set_color(dcolor)
draw_set_alpha(dalpha)

script_execute(drawscript,new)

}

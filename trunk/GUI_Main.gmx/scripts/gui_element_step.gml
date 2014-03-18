var new,stepscript,hide;

new = argument0

hide = ds_map_find_value(new,"hide")
if(hide==0)
{
    stepscript = ds_map_find_value(new,"step")
    script_execute(stepscript,new)
}

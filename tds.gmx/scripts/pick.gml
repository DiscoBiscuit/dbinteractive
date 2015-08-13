
var inst;
if(argument_count==0)
{
    inst = collision_point(mouse_x,mouse_y,all,true,false)
}
else
if(argument_count==1)
{
    inst = instance_find(object_by_name(argument[0]),0);
}

if(instance_exists(inst))
{
    consoleinstance = inst;
    print("Instance: "+string(inst)+"  Object: "+object_get_name(inst.object_index));
}
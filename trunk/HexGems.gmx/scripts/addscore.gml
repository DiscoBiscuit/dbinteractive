var new;
if(argument_count==3)
{
    new = instance_create(argument[1],argument[2],obj_scorenum)
}
else
{
    new = instance_create(x,y,obj_scorenum)
}
new.val = argument[0]

var new,mult;
mult = (6/game_diff) + game_num/3
if(argument_count==3)
{
    new = instance_create(argument[1],argument[2],obj_scorenum)
}
else
{
    new = instance_create(x,y,obj_scorenum)
}
new.val = round((argument[0]*mult)/5)*5
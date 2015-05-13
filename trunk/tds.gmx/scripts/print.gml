//Insert a new line at the beginning of the console list
ds_list_insert(obj_control.console,0,argument[0])
//Makes the console stay open. Larger values make it stay open longer
if(argument_count==1)
{
    //Default value
    obj_control.consolealpha = 10;
}
else
{
    //Optional second argument which allows for a custom "hang open" time
    obj_control.consolealpha = argument[1];
}
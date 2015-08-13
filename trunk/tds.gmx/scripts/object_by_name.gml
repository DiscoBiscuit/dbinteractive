var i;
i = 0;
//Cycle through all objects and stop if the name of the one you are looking at matches the one you want
while(object_exists(i))
{
    if(object_get_name(i)==argument0)
    {
        return i;
        break;
    }
    i++;
}
return -1;

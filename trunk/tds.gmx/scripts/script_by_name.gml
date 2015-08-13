var i;
i = 0;
//Cycle through all scripts and stop if the name of the one you are looking at matches the one you want
while(script_exists(i))
{
    if(script_get_name(i)==argument0)
    {
        return i;
        break;
    }
    i++;
}
return -1;

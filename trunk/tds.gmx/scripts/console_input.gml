if(consoletype==true)
{
    if(keyboard_string=="")
    {
        consoletype = false;
        timescale = 1;
    }
    else
    {
        ds_list_insert(console_hist,0,keyboard_string);
        print(keyboard_string);
        script_execute_string(keyboard_string);
        keyboard_string = "";
        consoletype = false;
        timescale = 1;
    }
}
else
{
    consolelookline = -1;
    consoletype = true;
    timescale = 0;
    keyboard_string = "";
}

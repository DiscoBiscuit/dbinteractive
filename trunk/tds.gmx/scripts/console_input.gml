if(consoletype==true)
{
    if(keyboard_string=="")
    {
        consoletype = false;
        timescale = 1;
    }
    else
    {
        print(keyboard_string);
        script_execute_string(keyboard_string);
        keyboard_string = "";
        consoletype = false;
        timescale = 1;
    }
}
else
{
    consoletype = true;
    timescale = 0;
    keyboard_string = "";
}

var args,name,scr;
args = string_explode(argument0," ");
name = args[1];
scr = script_by_name(name);
if(script_exists(scr))
{
    switch(args[0])
    {
        case 2:
            script_execute(scr);
            break;
        case 3:
            script_execute(scr,parse(args[2]));
            break;
        case 4:
            script_execute(scr,parse(args[2]),parse(args[3]));
            break;
        case 5:
            script_execute(scr,parse(args[2]),parse(args[3]),parse(args[4]));
            break;
        case 6:
            script_execute(scr,parse(args[2]),parse(args[3]),parse(args[4]),parse(args[5]));
            break;
        case 7:
            script_execute(scr,parse(args[2]),parse(args[3]),parse(args[4]),parse(args[5]),parse(args[6]));
            break;
        case 8:
            script_execute(scr,parse(args[2]),parse(args[3]),parse(args[4]),parse(args[5]),parse(args[6]),parse(args[7]));
            break;
        case 9:
            script_execute(scr,parse(args[2]),parse(args[3]),parse(args[4]),parse(args[5]),parse(args[6]),parse(args[7]),parse(args[8]));
            break;
        case 10:
            script_execute(scr,parse(args[2]),parse(args[3]),parse(args[4]),parse(args[5]),parse(args[6]),parse(args[7]),parse(args[8]),parse(args[9]));
            break;
        default:
            print("Error: You shouldn't be here!")
    }
}
else
{
    print("Unknown Script: "+name);
}

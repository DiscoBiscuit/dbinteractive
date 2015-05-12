var arg;
arg = argument0;
if(string_digits(arg)!="" and string_letters(arg)=="" and string_count(".",arg)<=1 and string_count("-",arg)<=1)
{
    //If the string argument only contains numbers, return its integer value
    return real(arg);
}
else
{
    //If not, leave it a string
    return arg;
}

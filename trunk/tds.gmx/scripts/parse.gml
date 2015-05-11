var arg;
arg = argument0;
if(string_lettersdigits(arg) == string_digits(arg) and string_digits(arg)!="" and string_letters(arg)=="")
{
    //If the string argument only contains numbers, return its integer value
    return real(arg);
}
else
{
    //If not, leave it a string
    return arg;
}

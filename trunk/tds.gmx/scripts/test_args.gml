//This is a test script. Hit enter to open console and type 'test_args 1 2 3'
var str;
str = "You typed: ";
for(i=0;i<argument_count;i++)
{
    str += argument[i];
    if(i<argument_count-1)
    {
        str += ",";
    }
}
print(str);

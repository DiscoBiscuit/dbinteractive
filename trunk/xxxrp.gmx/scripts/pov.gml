var out;
switch(argument_count)
{
    case 2:
        var invec;
        invec = argument[0]
        out[1] = invec[1]
        out[2] = invec[2]
        out[3] = argument[1]
        return out
    break;
    case 3:
        out[1] = argument[0]
        out[2] = argument[1]
        out[3] = argument[2]
        return out
    break;
}
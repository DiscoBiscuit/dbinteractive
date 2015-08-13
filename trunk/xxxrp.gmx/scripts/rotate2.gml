if(argument_count==2)
{
    var vec,dir,out;
    vec = argument[0]
    dir = argument[1]
    out[1] = lengthdir_x(vec[1],dir)+lengthdir_x(vec[2],dir-90)
    out[2] = lengthdir_y(vec[1],dir)+lengthdir_y(vec[2],dir-90)
    return out
}
if(argument_count==3)
{
    var nx,ny,dir,out;
    nx = argument[0]
    ny = argument[1]
    dir = argument[2]
    out[1] = lengthdir_x(nx,dir)+lengthdir_x(ny,dir-90)
    out[2] = lengthdir_y(nx,dir)+lengthdir_y(ny,dir-90)
    return out
}

var par,handle,out;
par = argument0
handle = argument1
out = add2( vec2(par.x,par.y) , rotate2(handle,par.direction) )
out[3] = handle[3]+par.direction
out[4] = handle[4]
return out
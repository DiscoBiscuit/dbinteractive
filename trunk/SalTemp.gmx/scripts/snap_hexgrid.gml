
var tx,ty,ry,gx,gy,vec;
tx = argument0
ty = argument1
gx = argument2
gy = argument3

ry = round(ty/gy)*gy
vec[1] = round((tx - (gx/gy)*(ry mod (gy*2) )/2)/gx)*gx + (gx/gy)*(ry mod (gy*2))/2
vec[2] = ry

return vec

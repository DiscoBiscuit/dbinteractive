var pos1,pos2,pos3,pos4,val,vec;
pos1 = argument0
pos2 = argument1
pos3 = argument2
pos4 = argument3
val = argument4

vec = vec2_mix( spline3(pos1,pos2,pos3,val), spline3(pos2,pos3,pos4,val), val)
return vec

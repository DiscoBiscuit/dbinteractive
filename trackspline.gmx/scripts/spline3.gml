var pos1,pos2,pos3,val,vec;
pos1 = argument0
pos2 = argument1
pos3 = argument2
val = argument3

vec = vec2_mix( vec2_mix(pos1,pos2,val), vec2_mix(pos2,pos3,val), val)
return vec

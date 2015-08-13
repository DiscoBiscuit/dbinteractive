/*
var p1,p2,l,a,b,d,loc,out;

p1 = argument0
p2 = argument1
l = argument2

a = point_distance(p1[1],p1[2],p2[1],p2[2])
d = point_direction(p1[1],p1[2],p2[1],p2[2])
b = sqrt(max(sqr(l)-sqr(a/2),0))
loc = pov(p1,d)
out = worldvec(loc,vec2(a/2,b*argument3))
return out
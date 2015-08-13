var a1,a2,a3,a4,b1,b2,b3,c1,c2,d1,v;
a1 = argument0
a2 = argument1
a3 = argument2
a4 = argument3
v = argument4
b1 = lerp2(a1,a2,v)
b2 = lerp2(a2,a3,v)
b3 = lerp2(a3,a4,v)
c1 = lerp2(b1,b2,v)
c2 = lerp2(b2,b3,v)
d1 = lerp2(c1,c2,v)
return d1
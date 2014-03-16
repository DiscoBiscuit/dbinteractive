var px,py,x1,y1,x2,y2,x3,y3,alpha,beta,gamma;

px = argument0
py = argument1

x1 = argument2
y1 = argument3

x2 = argument4
y2 = argument5

x3 = argument6
y3 = argument7

alpha = ((y2 - y3)*(px - x3) + (x3 - x2)*(py - y3)) / ((y2 - y3)*(x1 - x3) + (x3 - x2)*(y1 - y3))      
beta = ((y3 - y1)*(px - x3) + (x1 - x3)*(py - y3)) / ((y2 - y3)*(x1 - x3) + (x3 - x2)*(y1 - y3))
gamma = 1 - alpha - beta

if(alpha>0 and beta>0 and gamma>0)
{
return true
}
else
{
return false
}

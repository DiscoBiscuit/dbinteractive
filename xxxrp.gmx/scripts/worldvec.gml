var inpov,invec,out;
inpov = argument0
invec = argument1

out[1] = inpov[1]+lengthdir_x(invec[1],inpov[3])+lengthdir_x(invec[2],inpov[3]-90)
out[2] = inpov[2]+lengthdir_y(invec[1],inpov[3])+lengthdir_y(invec[2],inpov[3]-90)

return out

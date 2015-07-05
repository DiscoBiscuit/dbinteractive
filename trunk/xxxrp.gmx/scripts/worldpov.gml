var inpov,newpov,out;
inpov = argument0
newpov = argument1

out[1] = inpov[1]+lengthdir_x(newpov[1],inpov[3])+lengthdir_x(newpov[2],inpov[3]-90)
out[2] = inpov[2]+lengthdir_y(newpov[1],inpov[3])+lengthdir_y(newpov[2],inpov[3]-90)
out[3] = inpov[3] + newpov[3]

return out
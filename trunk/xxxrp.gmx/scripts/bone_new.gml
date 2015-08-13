var new,par;

new = instance_create(0,0,bone)
new.lx = argument0
new.ly = argument1
new.ld = argument2
new.parent = argument3
new.children[0] = 0
par = new.parent
par.children[0] = par.children[0]+1
par.children[par.children[0]] = new

return new

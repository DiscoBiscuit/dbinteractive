var x1,y1,x2,y2,tdist,tdir,vx,vy,scl,tex;

x1 = argument0+lengthdir_x(argument3,argument2)
y1 = argument1+lengthdir_y(argument3,argument2)*ymod
x2 = argument0+lengthdir_x(argument3+argument4,argument2)
y2 = argument1+lengthdir_y(argument3+argument4,argument2)*ymod
tdir = point_direction_ext(x1,y1,x2,y2,1,ymod)+90
tdist = point_distance_ext(x1,y1,x2,y2,1,ymod)
vx = lengthdir_x(argument5/2,tdir)
vy = lengthdir_y(argument5/2,tdir)*ymod
scl = max(1,round(argument4/16))

tex = background_get_texture(tex_solarpanel)
texture_set_repeat(true)

draw_set_color(c_gray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy,scl,0)
draw_vertex_texture(x1-vx,y1-vy,scl,argument5/16)
draw_vertex_texture(x2+vx,y2+vy,0,0)
draw_vertex_texture(x2-vx,y2-vy,0,argument5/16)
draw_primitive_end()

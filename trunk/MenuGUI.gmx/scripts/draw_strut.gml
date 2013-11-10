
var size,z,dirx,x1,y1,x2,y2,tdist,tdir,vx,vy,scl,tex;

size = 32
z = size*global.ZMOD
dirx = point_direction_ext(argument0,argument1,argument2,argument3,1,global.YMOD)
x1 = argument0+lengthdir_x(argument4,dirx)
y1 = argument1+lengthdir_y(argument4,dirx)*global.YMOD
x2 = argument2-lengthdir_x(argument4,dirx)
y2 = argument3-lengthdir_y(argument4,dirx)*global.YMOD
tdir = point_direction_ext(x1,y1,x2,y2,1,global.YMOD)+90
tdist = point_distance_ext(x1,y1,x2,y2,1,global.YMOD)
vx = lengthdir_x(size/2,tdir)
vy = lengthdir_y(size/2,tdir)*global.YMOD
scl = max(1,round(tdist/(size)))

tex = background_get_texture(tex_strut)
texture_set_repeat(true)

draw_set_color(c_gray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy+z,scl,0)
draw_vertex_texture(x1-vx,y1-vy+z,scl,1)
draw_vertex_texture(x2+vx,y2+vy+z,0,0)
draw_vertex_texture(x2-vx,y2-vy+z,0,1)
draw_primitive_end()

if(x2>x1)
{
draw_set_color(c_ltgray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy+z,scl,0)
draw_vertex_texture(x1+vx,y1+vy,scl,1)
draw_vertex_texture(x2+vx,y2+vy+z,0,0)
draw_vertex_texture(x2+vx,y2+vy,0,1)
draw_primitive_end()

draw_set_color(c_orange)
draw_line_width(x1,y1+z/2,x2,y2+z/2,size/3)
}

draw_set_color(c_ltgray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1-vx,y1-vy+z,scl,0)
draw_vertex_texture(x1-vx,y1-vy,scl,1)
draw_vertex_texture(x2-vx,y2-vy+z,0,0)
draw_vertex_texture(x2-vx,y2-vy,0,1)
draw_primitive_end()

if(x2<=x1)
{
draw_set_color(c_orange)
draw_line_width(x1,y1+z/2,x2,y2+z/2,size/3)

draw_set_color(c_ltgray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy+z,scl,0)
draw_vertex_texture(x1+vx,y1+vy,scl,1)
draw_vertex_texture(x2+vx,y2+vy+z,0,0)
draw_vertex_texture(x2+vx,y2+vy,0,1)
draw_primitive_end()
}

draw_set_color(c_white)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy,scl,0)
draw_vertex_texture(x1-vx,y1-vy,scl,1)
draw_vertex_texture(x2+vx,y2+vy,0,0)
draw_vertex_texture(x2-vx,y2-vy,0,1)
draw_primitive_end()

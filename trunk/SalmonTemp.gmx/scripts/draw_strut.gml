var dirx,x1,y1,x2,y2,tdist,tdir,vx,vy,scl,tex;

dirx = point_direction_ext(x,y,mouse_x,mouse_y,1,ymod)
x1 = argument0+lengthdir_x(argument4,dirx)
y1 = argument1+lengthdir_y(argument4,dirx)*ymod
x2 = argument2-lengthdir_x(argument4,dirx)
y2 = argument3-lengthdir_y(argument4,dirx)*ymod
tdir = point_direction_ext(x1,y1,x2,y2,1,ymod)+90
tdist = point_distance_ext(x1,y1,x2,y2,1,ymod)
vx = lengthdir_x(SIZE/2,tdir)
vy = lengthdir_y(SIZE/2,tdir)*ymod
scl = max(1,round(tdist/(SIZE)))

tex = background_get_texture(tex_strut2)
texture_set_repeat(true)

draw_set_color(c_gray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy,scl,0)
draw_vertex_texture(x1-vx,y1-vy,scl,1)
draw_vertex_texture(x2+vx,y2+vy,0,0)
draw_vertex_texture(x2-vx,y2-vy,0,1)
draw_primitive_end()

if(x2>x1)
{
draw_set_color(c_ltgray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy,scl,0)
draw_vertex_texture(x1+vx,y1+vy-h,scl,1)
draw_vertex_texture(x2+vx,y2+vy,0,0)
draw_vertex_texture(x2+vx,y2+vy-h,0,1)
draw_primitive_end()

draw_set_color(c_orange)
draw_line_width(x1,y1-h/2,x2,y2-h/2,SIZE/3)
}

draw_set_color(c_ltgray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1-vx,y1-vy,scl,0)
draw_vertex_texture(x1-vx,y1-vy-h,scl,1)
draw_vertex_texture(x2-vx,y2-vy,0,0)
draw_vertex_texture(x2-vx,y2-vy-h,0,1)
draw_primitive_end()

if(x2<=x1)
{
draw_set_color(c_orange)
draw_line_width(x1,y1-h/2,x2,y2-h/2,SIZE/3)

draw_set_color(c_ltgray)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy,scl,0)
draw_vertex_texture(x1+vx,y1+vy-h,scl,1)
draw_vertex_texture(x2+vx,y2+vy,0,0)
draw_vertex_texture(x2+vx,y2+vy-h,0,1)
draw_primitive_end()
}

draw_set_color(c_white)
draw_primitive_begin_texture(pr_trianglestrip,tex)
draw_vertex_texture(x1+vx,y1+vy-h,scl,0)
draw_vertex_texture(x1-vx,y1-vy-h,scl,1)
draw_vertex_texture(x2+vx,y2+vy-h,0,0)
draw_vertex_texture(x2-vx,y2-vy-h,0,1)
draw_primitive_end()

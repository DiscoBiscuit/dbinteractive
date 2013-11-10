material = argument0
x1 = argument1
y1 = argument2
x2 = argument3
y2 = argument4
normal = argument5
texture = sprite_get_texture(material,0)
draw_primitive_begin(pr_trianglelist)
draw_vertex(x1,y1)
draw_vertex(x2,y2)

if normal = 1
{
draw_vertex(x1,y2)
}
else
{
draw_vertex(x2,y1)
}

draw_primitive_end()

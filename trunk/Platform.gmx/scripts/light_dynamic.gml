
var lx,ly,lrad,lfall,lcol,lprec,ldists;
lx = argument0
ly = argument1
lrad = argument2
lfall = argument3
lcol = argument4
lprec = argument5

surface_set_target(lm.parent)
draw_set_blend_mode(bm_subtract)

draw_primitive_begin(pr_trianglefan)
draw_vertex_color(lx,ly,lcol,1)
for(i=0;i<=360;i+=(360/lprec))
{
ranger(lx,ly,lrad,i,true)
ldists[i] = global.xrd_d
draw_vertex_color(lx+lengthdir_x(ldists[i],i),ly+lengthdir_y(ldists[i],i),lcol,1)
}
draw_primitive_end()

draw_primitive_begin(pr_trianglestrip)
draw_vertex_color(lx,ly,lcol,1)
for(i=0;i<=360;i+=(360/lprec))
{
draw_vertex_color(lx+lengthdir_x(ldists[i],i),ly+lengthdir_y(ldists[i],i),lcol,1)
draw_vertex_color(lx+lengthdir_x(ldists[i]+lfall,i),ly+lengthdir_y(ldists[i]+lfall,i),c_black,1)
}
draw_primitive_end()

draw_set_blend_mode(bm_normal)
surface_reset_target()

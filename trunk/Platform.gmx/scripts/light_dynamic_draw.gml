surface_set_target(lightmap.parent)
draw_set_blend_mode(bm_subtract)

draw_primitive_begin(pr_trianglefan)
draw_vertex_color(x,y,color,1)
for(i=0;i<=360;i+=(360/prec))
{
draw_vertex_color(x+lengthdir_x(dist[i],i),y+lengthdir_y(dist[i],i),color,1)
}
draw_primitive_end()

draw_primitive_begin(pr_trianglestrip)
draw_vertex_color(x,y,color,1)
for(i=0;i<=360;i+=(360/prec))
{
draw_vertex_color(x+lengthdir_x(dist[i],i),y+lengthdir_y(dist[i],i),color,1)
draw_vertex_color(x+lengthdir_x(dist[i]+falloff,i),y+lengthdir_y(dist[i]+falloff,i),c_black,1)
}
draw_primitive_end()

draw_set_blend_mode(bm_normal)
surface_reset_target()

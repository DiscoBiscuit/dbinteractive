with(argument0)
{
var d;

surface_set_target(lightmap.parent)
draw_set_blend_mode(bm_subtract)

draw_primitive_begin(pr_trianglefan)
draw_vertex_color(x,y,flkr_col,1)
for(i=0;i<=360;i+=(360/prec))
{
d = dist[i]+flkr_r
draw_vertex_color(x+lengthdir_x(d,i),y+lengthdir_y(d,i),flkr_col,1)
}
draw_primitive_end()

draw_primitive_begin(pr_trianglestrip)
for(i=0;i<=360;i+=(360/prec))
{
d = dist[i]+flkr_r
draw_vertex_color(x+lengthdir_x(d,i),y+lengthdir_y(d,i),flkr_col,1)
draw_vertex_color(x+lengthdir_x(d+falloff,i),y+lengthdir_y(d+falloff,i),c_black,1)
}
draw_primitive_end()

draw_set_blend_mode(bm_normal)
surface_reset_target()
}

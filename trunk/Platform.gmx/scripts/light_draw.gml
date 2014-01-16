//light_draw(light)

with(argument0)
{
if(on)
{
var d;

surface_set_target(lightmap.parent)
draw_set_blend_mode(bm_subtract)

draw_primitive_begin(pr_trianglefan)
draw_vertex_color(x,y,flkr_col,1)
for(i=0;i<=360;i+=(360/prec))
{
ldist[i] = lerp(ldist[i],dist[i],lrp)
d = max(0,ldist[i] + flkr_r + pen - falloff)
draw_vertex_color(x+lengthdir_x(d,i),y+lengthdir_y(d,i),flkr_col,1)
}
draw_primitive_end()

draw_primitive_begin(pr_trianglestrip)
for(i=0;i<=360;i+=(360/prec))
{
d = ldist[i] + flkr_r + pen
draw_vertex_color(x+lengthdir_x(max(0,d-falloff),i),y+lengthdir_y(max(0,d-falloff),i),flkr_col,1)
draw_vertex_color(x+lengthdir_x(d,i),y+lengthdir_y(d,i),c_black,1)
}
draw_primitive_end()

draw_set_blend_mode(bm_normal)
surface_reset_target()
}
}

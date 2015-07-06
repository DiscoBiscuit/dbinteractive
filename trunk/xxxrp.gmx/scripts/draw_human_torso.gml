var cp,thip,tspine,tneck,thead,lowback,highback,chest,groin;

thip = argument0
tspine = argument1
tneck = argument2
thead = argument3

lowback = spline_points( local_handle(thip,spline_handle(-32,-32,70,16)) , local_handle(tspine,spline_handle(-40,-16,280,32)) , 4)
highback = spline_points( local_handle(tspine,spline_handle(-40,-16,100,32)) , local_handle(tspine,spline_handle(-32,-72,225,16)) , 5)
chest = spline_points( local_handle(tspine,spline_handle(3,-72,-30,16)) , local_handle(thip,spline_handle(48,-48,90,32)) , 5)
groin = spline_points( local_handle(thip,spline_handle(48,-48,270,32)) , local_handle(thip,spline_handle(0,32,0,48)) , 6)

cp = local_vec(thead,vec2(0,0))
draw_sprite_ext(spr_head,0,cp[1],cp[2],0.4,0.4,thead.direction,skin_color,1)

draw_set_color(skin_color)
draw_primitive_begin(pr_trianglefan)
cp = local_vec(tspine,vec2(0,0))
draw_vertex(cp[1],cp[2])
draw_spline_vertex(lowback)
draw_spline_vertex(highback,2)
draw_spline_vertex(chest)
draw_spline_vertex(groin,2)
cp = lowback[1]
draw_vertex(cp[1],cp[2])
draw_primitive_end()

draw_set_color(merge_color(skin_color,c_black,0.66))

draw_spline(lowback)
draw_spline(highback)
draw_spline(chest)
draw_spline(groin)

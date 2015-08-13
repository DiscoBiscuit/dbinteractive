var cp,tspine,tbicep,tarm,thand,bicep_back,bicep_front,arm_back,arm_front;

tspine = argument0
tbicep = argument1
tarm = argument2
thand = argument3

bicep_back = spline_points( local_handle(tbicep,spline_handle(-12,0,250,16)) , local_handle(tbicep,spline_handle(-12,tarm.ly,100,32)) , 4)
bicep_front = spline_points( local_handle(tbicep,spline_handle(12,tarm.ly,90,32)) , local_handle(tbicep,spline_handle(12,0,270,16)) , 4)
arm_back = spline_points( local_handle(tbicep,spline_handle(-12,tarm.ly,240,16)) , local_handle(tarm,spline_handle(-8,thand.ly,100,32)) , 4)
arm_front = spline_points( local_handle(tarm,spline_handle(8,thand.ly,100,32)) , local_handle(tbicep,spline_handle(12,tarm.ly,290,16)) , 4)

draw_set_color(skin_color)

cp = local_vec(thand,vec2(0,0))
draw_sprite_ext(spr_hand,0,cp[1],cp[2],0.35,0.35,thand.direction,skin_color,1)

draw_primitive_begin(pr_trianglefan)
cp = local_vec(tbicep,vec2(0,36))
draw_vertex(cp[1],cp[2])
draw_spline_vertex(bicep_back)
draw_spline_vertex(bicep_front)
cp = bicep_back[1]
draw_vertex(cp[1],cp[2])
draw_primitive_end()

draw_primitive_begin(pr_trianglefan)
cp = local_vec(tarm,vec2(0,36))
draw_vertex(cp[1],cp[2])
draw_spline_vertex(arm_back)
draw_spline_vertex(arm_front)
cp = arm_back[1]
draw_vertex(cp[1],cp[2])
draw_primitive_end()

draw_set_color(merge_color(skin_color,c_black,0.66))
draw_spline(bicep_back)
draw_spline(bicep_front)
draw_spline(arm_back)
draw_spline(arm_front)

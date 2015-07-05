var cp,thip,tthigh,tcalf,tfoot,ass,thigh_back,thigh_front,calf_back;

thip = argument0
tthigh = argument1
tcalf = argument2
tfoot = argument3

ass = spline_points( local_handle(thip,spline_handle(-32,-32,200+tthigh.ld,32)) , local_handle(tthigh,spline_handle(-32,48,160-tthigh.ld,32)) , 8)
thigh_back = spline_points( local_handle(tthigh,spline_handle(-32,48,200,16)) , local_handle(tthigh,spline_handle(-16,128,135,32)) , 6)
thigh_front = spline_points( local_handle(tthigh,spline_handle(16,128,80,16)) , local_handle(tthigh,spline_handle(32,0,-60,32)) , 5)
calf_back = spline_points( local_handle(tthigh,spline_handle(-16,128,190,32)) , local_handle(tcalf,spline_handle(-12,128,115,32)) , 6)
calf_front = spline_points( local_handle(tcalf,spline_handle(12,128,100,48)) , local_handle(tthigh,spline_handle(16,128,315,8)) , 4)

cp = local_vec(tfoot,vec2(0,0))
draw_sprite_ext(spr_heels,0,cp[1],cp[2],0.5,0.5,tfoot.direction,skin_color,1)

draw_set_color(skin_color)

draw_primitive_begin(pr_trianglefan)
cp = local_vec(tthigh,vec2(0,48))
draw_vertex(cp[1],cp[2])
draw_spline_vertex(ass)
draw_spline_vertex(thigh_back,2)
draw_spline_vertex(thigh_front)
cp = ass[1]
draw_vertex(cp[1],cp[2])
draw_primitive_end()

draw_primitive_begin(pr_trianglefan)
cp = local_vec(tcalf,vec2(0,64))
draw_vertex(cp[1],cp[2])
draw_spline_vertex(calf_back)
draw_spline_vertex(calf_front)
cp = calf_back[1]
draw_vertex(cp[1],cp[2])
draw_primitive_end()

draw_set_color(merge_color(skin_color,c_black,0.66))
draw_spline(ass)
draw_spline(thigh_back)
draw_spline(thigh_front)
draw_spline(calf_back)
draw_spline(calf_front)

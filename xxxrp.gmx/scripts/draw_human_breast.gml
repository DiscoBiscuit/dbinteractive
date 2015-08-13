var cp,tspine,boob_top,boob_bottom;

tspine = argument0

boob_top = spline_points( local_handle(tspine,spline_handle(10,-62,315,16)) , local_handle(tspine,spline_handle(64,0,70,48)) , 8)
boob_bottom = spline_points( local_handle(tspine,spline_handle(64,0,230,64)) , local_handle(tspine,spline_handle(0,-22,315,16)) , 8)

draw_set_color(skin_color)

draw_primitive_begin(pr_trianglefan)
cp = local_vec(tspine,vec2(-3,-52))
draw_vertex(cp[1],cp[2])
draw_spline_vertex(boob_top)
draw_spline_vertex(boob_bottom)
cp = boob_top[1]
draw_vertex(cp[1],cp[2])
draw_primitive_end()

draw_set_color(merge_color(skin_color,c_black,0.66))
draw_spline(boob_top)
draw_spline(boob_bottom)

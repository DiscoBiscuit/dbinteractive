draw_set_color(c_back)
draw_rectangle(x- w/2, y-h/2, x+w/2, y+h/2, false)

if(draggable){
draw_set_color(c_bar)
draw_rectangle(x- w/2, y-h/2, x+w/2, y-h/2 + 16, false)}

if(closeable){
draw_set_color(c_border)
draw_line(x+ w/2 - 2, y-h/2 + 2, x+w/2 - 12, y-h/2 +12)
draw_line(x+ w/2 - 12, y-h/2 + 2, x+w/2 - 2, y-h/2 +12)}

draw_set_color(c_border)
draw_rectangle(x- w/2, y-h/2, x+w/2, y+h/2, true)

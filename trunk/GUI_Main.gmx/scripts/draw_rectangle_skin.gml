
//draw_rectangle_skin(sprite,index,x1,y1,x2,y2,color,alpha)
//draws a rectangle with borders using a 3x3 tilegrid sprite as reference

var sprite,index,border,hor,vert,x1,y1,x2,y2,blend,alpha;
sprite = argument0
index = argument1
x1 = min(argument2,argument4)
y1 = min(argument3,argument5)
x2 = max(argument4,argument2)
y2 = max(argument5,argument3)
blend = c_white
alpha = argument6

border = sprite_get_width(sprite)/3
hor = (x2-x1) - border*2
vert = (y2-y1) - border*2

//corners
draw_sprite_part_ext(sprite,index,0,0,border,border,x1,y1,1,1,blend,alpha)
draw_sprite_part_ext(sprite,index,0,border*2,border,border,x1,y2-border,1,1,blend,alpha)
draw_sprite_part_ext(sprite,index,border*2,0,border,border,x2-border,y1,1,1,blend,alpha)
draw_sprite_part_ext(sprite,index,border*2,border*2,border,border,x2-border,y2-border,1,1,blend,alpha)

//sides
draw_sprite_part_ext(sprite,index,border,0,border,border,x1+border,y1,hor/border,1,blend,alpha)
draw_sprite_part_ext(sprite,index,0,border,border,border,x1,y1+border,1,vert/border,blend,alpha)
draw_sprite_part_ext(sprite,index,border,border*2,border,border,x1+border,y2-border,hor/border,1,blend,alpha)
draw_sprite_part_ext(sprite,index,border*2,border,border,border,x2-border,y1+border,1,vert/border,blend,alpha)

//center
draw_sprite_part_ext(sprite,index,border,border,border,border,x1+border,y1+border,hor/border,vert/border,blend,alpha)



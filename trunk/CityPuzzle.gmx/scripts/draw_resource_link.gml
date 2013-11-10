var resource,amount,symbol,add,icon,col,drx,dry,drstr,x1,y1,x2,y2;
resource = string_letters(argument0)

symbol = string_char_at(argument0,0)
if(symbol="+")
{
add=1
col = c_lime
}
else
{
add=-1
col = c_red
}

amount = real(string_digits(argument0))*add

if(amount!=0)
{

if(resource="pop"){icon = 0}
if(resource="wood"){icon = 1}
if(resource="food"){icon = 2}
if(resource="stone"){icon = 3}

x1 = argument1
y1 = argument2
x2 = argument3
y2 = argument4

drx = lerp(x1,x2,0.65)
dry = lerp(y1,y2,0.65)-argument5
drstr = symbol+string(abs(amount))

ds_list_add(obj_resourcelinedraw.x1,x1)
ds_list_add(obj_resourcelinedraw.y1,y1)
ds_list_add(obj_resourcelinedraw.x2,x2)
ds_list_add(obj_resourcelinedraw.y2,y2)
ds_list_add(obj_resourcelinedraw.col,col)


draw_set_alpha(0.8)
draw_set_color(c_ltgray)
draw_roundrect(drx-string_width(drstr)-2,dry-10,drx+26,dry+10,false)
draw_set_alpha(1)
draw_set_color(merge_color(col,c_black,0.6))
draw_text(drx,dry,drstr)
draw_set_color(c_white)
draw_sprite_ext(resource_icons,icon,drx+2,dry-8,0.6,0.6,0,c_white,1)


}
return amount

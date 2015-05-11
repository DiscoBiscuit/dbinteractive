var count,val;
count = ds_list_size(console);
draw_set_alpha(min(1,consolealpha));

draw_set_color(c_white);
draw_rectangle(0,0,384,min(12,count-1)*16 + 16,false);
draw_set_color(c_black);
draw_rectangle(0,0,384,min(12,count-1)*16 + 16,true);

for(i=0;i<count;i++)
{
    val = ds_list_find_value(console,i);
    draw_text(4,min(12,count-1)*16 - i*16,val);
}

if(consoletype==true)
{
    consolealpha = 10;
    draw_set_color(c_ltgray)
    draw_rectangle(0,min(12,count-1)*16 + 16,384,min(12,count-1)*16 + 32,false)
    draw_set_color(c_black)
    draw_rectangle(0,min(12,count-1)*16 + 16,384,min(12,count-1)*16 + 32,true)
    draw_text(4,min(12,count-1)*16 + 16,keyboard_string+"|");
}
draw_set_alpha(1);
consolealpha = max(0,consolealpha-0.02);

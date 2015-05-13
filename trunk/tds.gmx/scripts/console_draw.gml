var count,val;
count = ds_list_size(console);
draw_set_alpha(min(1,consolealpha));

draw_set_color(c_white);
draw_rectangle(0,0,consolewidth,min(12,count-1)*16 + 16,false);
draw_set_color(c_black);
draw_rectangle(0,0,consolewidth,min(12,count-1)*16 + 16,true);

for(i=0;i<count;i++)
{
    val = ds_list_find_value(console,i);
    draw_text(4,min(12,count-1)*16 - i*16,val);
    consolewidth = max(consolewidth,string_width(val)+8);
}

if(consoletype==true)
{
    consolealpha = 10;
    draw_set_color(c_ltgray)
    draw_rectangle(0,min(12,count-1)*16 + 16,consolewidth,min(12,count-1)*16 + 32,false)
    draw_set_color(c_black)
    draw_rectangle(0,min(12,count-1)*16 + 16,consolewidth,min(12,count-1)*16 + 32,true)
    draw_text(4,min(12,count-1)*16 + 16,keyboard_string+"|");
    
    if(keyboard_check(vk_control))
    {
        if(keyboard_check(ord("C")))
        {
            clipboard_set_text(keyboard_string);
        }
        if(keyboard_check(ord("V")) and clipboard_has_text())
        {
            keyboard_string = clipboard_get_text();
        }
    }
    if(keyboard_check_pressed(vk_up))
    {
        consolelookline = min(consolelookline+1,ds_list_size(console_hist)-1);
        keyboard_string = ds_list_find_value(console_hist,consolelookline);
    }
    if(keyboard_check_pressed(vk_down))
    {
        consolelookline = max(consolelookline-1,0);
        keyboard_string = ds_list_find_value(console_hist,consolelookline);
    }
}
draw_set_alpha(1);
consolealpha = max(0,consolealpha-0.02);
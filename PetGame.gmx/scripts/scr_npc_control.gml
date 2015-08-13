if (keyboard_check(ord('D')))
{
    xspeed += 1;
}
if (keyboard_check(ord('A')))
{
    xspeed -= 1;
}
xspeed = xspeed / 1.125;
xspeed = clamp(xspeed,-xspeedmax,xspeedmax);
for (i=0; i<slopeheight; i+=1)
{
    if (place_free(x+xspeed,y-i))
    {
        x += xspeed;
        y -= i;
        i = 999;
    }
    if (i == slopeheight-1)
    {
        xspeed = 0;
    }
}
xspeed = clamp(xspeed,-xspeedmax,xspeedmax);
if (keyboard_check_pressed(vk_space) and not place_free(x,y+8+yspeed))
{
    image_index = 0;
    yspeed = -yspeedmax;
}

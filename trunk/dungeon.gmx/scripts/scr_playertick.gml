if (place_free(x,y+1+yspeed))
{
    yspeed += 1;
}
else
{
    if (sign(yspeed) == 1)
    {
        move_contact_solid(270,-1);
    }
    yspeed = 0;
}
y += yspeed;

if (place_free(x,y+2+yspeed))
{
    sprite_index = spr_player_jump;
    //image_xscale = sign(xspeed);
    if (image_index < 3)
    {
        image_speed = 0.2;
    }
    else
    {
        image_index = 3;
        image_speed = 0;
    }
}
else
{
    if (abs(xspeed) > 1)
    {
        image_speed = abs(xspeed/28);
        image_xscale = sign(xspeed);
        sprite_index = spr_player_run;
    }
    else
    {
        sprite_index = spr_player_idle;
    }
}

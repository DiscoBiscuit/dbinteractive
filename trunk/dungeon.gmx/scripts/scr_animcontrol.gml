//torso
var torsox,torsoy;
torsox = x+xspeed;
torsoy = y+72+(sin(x/16)*xspeed/4);
//feets
var footpos1x,footpos2x,footpos1y,footpos2y,footang1,footang2;
if (onground)
{
    footpos1x = x+8+sin(x/16)*xspeed*1.5;
    footpos2x = x-8-sin(x/16)*xspeed*1.5;
    footpos1y = min(y+120-cos(x/16)*xspeed,y+120);
    footpos2y = min(y+120+cos(x/16)*xspeed,y+120);
}
else
{
    footpos1x = x+8+abs(xspeed)*1.5;
    footpos2x = x-8-abs(xspeed)*1.5;
    footpos1y = y+120;
    footpos2y = y+120;
}
footang1 = point_direction(torsox,torsoy-32,footpos1x,footpos1y)+90;
footang2 = point_direction(torsox,torsoy-32,footpos2x,footpos2y)+90;
//hands
var handpos1x,handpos2x,handpos1y,handpos2y;
if (onground)
{
    handpos1x = (x+sin(x/24)*xspeed*2.2)+xspeed;
    handpos2x = (x-sin(x/24)*xspeed*2.2)+xspeed;
}
else
{
    handpos1x = x+abs(xspeed*1.5)+xspeed;
    handpos2x = x-abs(xspeed*1.5)+xspeed;
}
draw_sprite_ext(spr_player_hand,image_index,handpos1x,y+80,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_player_torso,image_index,torsox,torsoy,image_xscale,image_yscale,image_angle-xspeed,image_blend,image_alpha);
draw_sprite_ext(spr_player_hand,image_index,handpos2x,y+80,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_player_foot,image_index,footpos1x,footpos1y,image_xscale,image_yscale,footang1,image_blend,image_alpha);
draw_sprite_ext(spr_player_foot,image_index,footpos2x,footpos2y,image_xscale,image_yscale,footang2,image_blend,image_alpha);

//Draw arrows pointing towards offscreen baddies
with (obj_enemy) {
    var temp_x, temp_y, temp_x2, temp_y2, temp_a;
    temp_x = x-(view_xview[0]+(view_wview[0]/2));
 //Get x offset from centre of view
    temp_y = y-(view_yview[0]+(view_hview[0]/2));
 //Get y offset from centre of view
    if !((abs(temp_x) < view_wview[0]/2) && (abs(temp_y) < view_hview[0]/2)) { //If enemy is not in the view
        if ((point_direction(0,0,temp_x,temp_y) == median(point_direction(0,0,view_wview[0],view_hview[
0]), point_direction(0,0,temp_x,temp_y), point_direction(0,0,-view_wview[0],view_hview[
0]))) || (point_direction(0,0,temp_x,temp_y) == median(point_direction(0,0,-view_wview[0],-
view_hview[0]), point_direction(0,0,temp_x,temp_y), point_direction(0,0,view_wview[0],-view_hview[
0])))) { //If arrow is along top or bottom edges
        //I could have used atan2 there, instead of point_direction, but I thought point_direction would make it easier to understand what the code does (&& means AND and || means OR)
            temp_y2 = sign(temp_y)*view_hview[0]/2; //Align the position along the top/bottom
            temp_x2 = round(temp_x*temp_y2/temp_y); //Figure out the x position for the arrow
        } else { //If arrow is along left or right edges
            temp_x2 = sign(temp_x)*view_wview[0]/2; //Align the position along the left/right
            temp_y2 = round(temp_y*temp_x2/temp_x); //Figure out the y position for the arrow
        }
        temp_x2 = view_xview[0]+(view_wview[0]/2)+temp_x2;
        temp_y2 = view_yview[0]+(view_hview[0]/2)+temp_y2;
        temp_a = clamp(point_distance(x,y,temp_x2,temp_y2)/64,0,1)
        draw_sprite_ext(spr_arrow, 0, temp_x2,temp_y2,1, 1, point_direction(0, 0, temp_x, temp_y), c_white, temp_a); //Draw the sprite
    }
}

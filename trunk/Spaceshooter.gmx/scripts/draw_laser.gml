/*  draw_laser()
**  by masterofkings
**
**  General form: draw_laser(x,y,dir,range,accr,obj,col1,col2)
**
**  Argument list:
**    argument0 (x):     x position of the start of the laser
**    argument1 (y):     y position of the start of the laser
**    argument2 (dir):   direction in which the laser will travel
**    argument3 (range): maximum distance that the laser can travel
**    argument4 (accr):  the accuracy of the laser (must be greater than 0)
**    argument5 (obj):   the object which blocks the laser
**    argument6 (col1):  the first color of the laser
**    argument7 (col2):  the second color of the laser
**
**  Usage: Draws a laser which can be blocked by obj. The laser will be in the
**         color of both col1 and col2 (gradient).
**
**  Note: Can only be used in the Pro edition of Game Maker.
*/
var xx, yy, inst;
xx=argument0;
yy=argument1;
repeat(argument3/argument4) {
    xx+=lengthdir_x(argument4,argument2);
    yy+=lengthdir_y(argument4,argument2);
    inst=instance_position(xx,yy,instance_nearest(xx,yy,argument5));
    if (inst!=noone && inst!=id) {
        break;
    }
}
draw_line_color(argument0,argument1,xx,yy,argument6,argument7);

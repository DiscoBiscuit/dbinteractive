/*
argument0 - x1
argument1 - y1
argument2 - x2
argument3 - y2
argument4 - x3
argument5 - y3
argument6 - x4
argument7 - y4
argument8 - Line smoothness
*/
i=0
ox=argument0
oy=argument1
cx=3*(argument2-argument0)
bx=3*(argument4-argument2)-cx
ax=argument6-argument0-cx-bx
cy=3*(argument3-argument1)
by=3*(argument5-argument3)-cy
ay=argument7-argument1-cy-by
for (i=0; i<1; i+=argument8)
{
  xq=((ax*i+bx)*i+cx)*i+argument0
  yq=((ay*i+by)*i+cy)*i+argument1
  if i>0 {draw_line_width(ox,oy,xq,yq,4)}
  ox=xq; oy=yq
}
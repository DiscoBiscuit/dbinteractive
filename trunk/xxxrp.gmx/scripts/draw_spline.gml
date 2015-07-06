var i,spl;
spl = argument0
for(i=2;i<=spl[0]+1;i++)
{
    p1 = spl[i-1]
    p2 = spl[i]
    draw_line_width(p1[1],p1[2],p2[1],p2[2],3)
}
var spl,start;
spl = argument[0]
start = 1
if(argument_count==2)
{
    start = argument[1]
}
for(i=start;i<=spl[0]+1;i++)
{
    p1 = spl[i]
    draw_vertex(p1[1],p1[2])
}

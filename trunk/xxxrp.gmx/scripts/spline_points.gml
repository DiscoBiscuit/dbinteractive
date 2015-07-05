var i,spl1,spl2,cp1,cp2,points,count;
spl1 = argument0
spl2 = argument1
cp1 = add2(spl1, forward2(spl1[4],spl1[3]) )
cp2 = add2(spl2, forward2(spl2[4],spl2[3]) )
count = argument2
points[0] = count
for(i=0;i<=count;i++)
{
    v = i/count
    points[i+1] = spline4(spl1,cp1,cp2,spl2,v)
}
return points

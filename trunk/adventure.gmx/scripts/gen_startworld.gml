width = room_width/16
height = room_height/16
orig = 24
h1 = 0
v1 = 0
h2 = 0
v2 = 0
for(i=0;i<width;i+=1)
{
    v1 = (v1+(1-random(2))/4)/1.05
    h1 = h1/1.01 + v1
    v2 = (v2-1+random(2))/1.1
    h2 = h2/1.1 + v2
    h = clamp(orig+round(h1+h2),0,height)
    for(j=h;j<height;j+=1)
    {
        mat[i,j] = argument0
        dmg[i,j] = 0
    }
}

xx = argument0
yy = argument1
ww = randint(5)
dd = randint(360)
length = randint(80)

for(n=1;n<length;n+=1)
{
    gen_circle(xx,yy,ww,0)
    ww = clamp(ww-1+randint(2),-5,5)
    dd += -50+randint(100)
    xx = round(xx+lengthdir_x(floor(ww/2),dd))
    yy = round(yy+lengthdir_y(floor(ww/2),dd))
}

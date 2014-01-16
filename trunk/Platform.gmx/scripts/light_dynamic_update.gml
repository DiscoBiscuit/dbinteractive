for(i=0;i<=360;i+=(360/prec))
{
ranger(x,y,radius,i,true)
dist[i] = lerp(global.xrd_d,dist[i],0.7)
}

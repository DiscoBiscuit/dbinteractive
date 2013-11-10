gen_startworld(1)

for(i=0;i<width;i+=1)
{
    for(j=0;j<height;j+=1)
    {
        if chance(1000)
        {
            gen_cave(i,j)
        }
    }
}

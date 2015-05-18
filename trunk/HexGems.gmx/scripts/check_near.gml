var adj;

for(d=0;d<6;d+=1)
{
    adj = get_adjacent(d)
    if(instance_exists(adj))
    {
        if(adj.gem == gem)
        {
            if(adj.counted==0)
            {
                adj.counted = 3
            }
        }
    }
}

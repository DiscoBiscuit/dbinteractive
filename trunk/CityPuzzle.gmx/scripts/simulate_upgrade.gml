var node,newlink1,newlink2,nodebuilding,nodelevel,pulllist;

node = argument0
nodebuilding = argument1
nodelevel = argument2
pulllist = ds_list_create()

for(i=0;i<ds_list_size(node.links);i+=1)
{
    newlink1 = ds_list_find_value(node.links,i)
    if(newlink1.building==nodebuilding and newlink1.level==nodelevel)
    {
        ds_list_add(pulllist,newlink1)
        
        for(j=0;j<ds_list_size(newlink1.links);j+=1)
        {
            newlink2 = ds_list_find_value(newlink1.links,j)
            if(newlink2.building==nodebuilding and newlink2.level==nodelevel)
            {
                ds_list_add(pulllist,newlink2)
            }
        }
    }
}

if(ds_list_size(pulllist)<2)
{
    //Not upgradable
    return nodelevel
}
else
{
    //Can upgrade
    var epull,nb,nt,val;
    for(k=0;k<ds_list_size(pulllist);k+=1)
    {
        epull = ds_list_find_value(pulllist,k)
        with(epull)
        {
            pull = true
        }
    }

    return nodelevel+1
}

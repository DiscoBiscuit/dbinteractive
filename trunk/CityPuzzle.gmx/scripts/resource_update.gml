
obj_gui.production = 0
obj_gui.energy = 0

with(obj_node)
{
    if(building!="none")
    {
        var nb,nl,minl,maxl,lev,lev2;
        for(i=0;i<ds_list_size(links);i+=1)
        {
            nb = (ds_list_find_value(links,i)).building
            nl = (ds_list_find_value(links,i)).level
            minl = min(level,nl)
            maxl = max(level,nl)
            if(minl==maxl){
            lev=minl
            lev2=maxl}
            if(minl<maxl){
            lev=minl+1
            lev2 = maxl-1}
            
            if(building=="house" and nb=="factory"){obj_gui.production+= power(3,lev-1)}
            if(building=="factory" and nb=="energy"){obj_gui.energy+= power(3,lev-1)}
            if(building=="energy" and nb=="house"){obj_gui.production-= power(3,lev2-1)}
        }
    } 
}

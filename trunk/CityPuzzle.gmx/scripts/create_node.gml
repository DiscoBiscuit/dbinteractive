var created,fails,ndir,ndist,nx,ny,ne,nd;
created = false
fails = 0

while(created==false and fails<512)
{
    ndir = random(360)
    ndist = random( min( room_width/2.2 , 300+ds_list_size(nodelist)*10) )
    nx = room_width/2 + round(lengthdir_x(ndist,ndir))
    ny = room_height/2 + round(lengthdir_y(ndist,ndir)*ymod)
    ne = instance_nearest(nx,ny,obj_node)
    ne.depth = -ne.y
    nd = point_distance_ext(ne.x,ne.y,nx,ny,1,ymod)
    
    if(nd>160 and nd<195)
    {
        nnn = instance_create(nx,ny,obj_node)
        ds_list_add(nodelist,nnn)
        created = true
        print("Added node")
        with(obj_scenery){if(point_distance(x,y,nx,ny)<80){instance_destroy()}}

        with(nnn)
        {
            //create a list of links for this node
            links = ds_list_create()
            ds_list_clear(links)
            var nlist,nnode;
            //reference the big list of nodes
            nlist = obj_nodespawn_dynamic.nodelist
            for(i=0;i<ds_list_size(nlist);i+=1)
            {
                //easy way to reference the list later
                nnode = ds_list_find_value(nlist,i)
                //if the node in question is not itself and is in range
                if(nnode!=id and point_distance_ext(x,y,nnode.x,nnode.y,1,obj_nodespawn_dynamic.ymod)<200)
                {
                    //add it to the list of nodes this one is linked to
                    ds_list_add(links,nnode)
                    ds_list_add(nnode.links,id)
                }
            }
        } 
    }
    else
    {
        fails += 1
    }
}

return fails;

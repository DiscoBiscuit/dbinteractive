
if(point_distance(x,y,child.gx,child.gy)>150)
{
    if(child.parent1==id)
    {
        child.parent1 = noone
    }
    if(child.parent2==id)
    {
        child.parent2 = noone
    }
    with(child)
    {
        clear_children()
    }
    child = noone
}

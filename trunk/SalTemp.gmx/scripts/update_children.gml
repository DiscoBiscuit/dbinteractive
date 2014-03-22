if(parent1!=noone and parent2!=noone)
{
    combine_glyphs(parent1.glyph,parent2.glyph)
}
if(child!=noone)
{
    with(child)
    {
        update_children()
    }
}

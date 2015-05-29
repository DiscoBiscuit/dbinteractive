var cldr,i;
cldr = ds_list_create()
for(i=0;i<argument_count;i+=1)
{
    ds_list_add(cldr,argument[i])
}
return cldr
var i,vec,out;
out[1] = 0
out[2] = 0
for(i=0;i<argument_count;i++)
{
    vec = argument[i]
    out[1] = out[1] + vec[1]
    out[2] = out[2] + vec[2]
}
return out

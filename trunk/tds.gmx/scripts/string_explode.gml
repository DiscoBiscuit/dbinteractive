var arr;
var del = argument1;
var str = argument0 + del;
var len = string_length(del);
var ind = 1;
while(string_length(str)>0)
{
    var pos;
    if(string_char_at(str,1)=="'")
    {
        str = string_delete(str,1,1);
        pos = string_pos("'", str) - 1;
        arr[ind] = string_copy(str, 1, pos);
        str = string_delete(str, 1, pos + len + 1);
        ind++;
    }
    else
    {
        pos = string_pos(del, str) - 1;
        arr[ind] = string_copy(str, 1, pos);
        str = string_delete(str, 1, pos + len);
        ind++;
    }
}
arr[0] = ind;
return arr;

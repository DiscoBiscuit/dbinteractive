var arr;
var del = argument0;
var str = argument1 + del;
var len = string_length(del);
var ind = 1;
repeat (string_count(del, str))
{
    var pos = string_pos(del, str) - 1;
    arr[ind] = string_copy(str, 1, pos);
    str = string_delete(str, 1, pos + len);
    ind++;
}
arr[0] = ind;
return arr;

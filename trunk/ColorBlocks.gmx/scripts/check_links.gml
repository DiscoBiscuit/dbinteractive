global.pullcount = 0

with(obj_block)
{
pull = 0
}

check_sides()

with(obj_block)
{
    if(pull==1){check_sides()}
}

with(obj_block)
{
if(pull==1){global.pullcount+=1}
}

if(global.pullcount>2)
{
with(obj_block)
{
    if(pull==1){
    if(m4d == 0){
        m4d = 1
        alarm[2] = 30
    }
    pull = 0
    }
}
}

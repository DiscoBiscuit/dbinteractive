sprite_index = bash;
if (state_time == 0){
    image_index = 0;
}

if (spr_dir = -1){
    if position_meeting(x-20,y-16,parSolid){
        x+=5;
        hsp=0;
    }
}
else{
    if position_meeting(x+20,y-16,parSolid){
        x-=5;
        hsp=0;
    }
}

if (floor(image_index) == 2){
    if spr_dir == 1 {hsp=3} else {hsp=-3}
}

if (image_index >= (image_number-1)){
    hsp=0;
    next_state = st_char_test5;
    return(state_next);
}
return(state_continue);
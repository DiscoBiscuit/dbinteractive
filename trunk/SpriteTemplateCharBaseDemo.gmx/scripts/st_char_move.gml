if (hsp == 0){
    next_state = st_char_stand;
    return(state_nextnow);
}




if (free == 0){
    
    //image_speed=0.3;
    if (keyboard_check_direct(vk_down)){
        sprite_index = crawl;
        max_spd = 2;
    }
    else if (keyboard_check_direct(vk_add)){
        sprite_index = stride;
        max_spd = 7;
        image_speed = abs(hsp/14);
        //image_speed=0.3;
    }
    else if (keyboard_check_direct(vk_subtract)){
        sprite_index = walk;
        max_spd = 2;
        //image_speed=0.3;
    }
    else if (keyboard_check_direct(vk_multiply)){
        sprite_index = push;
        mask_index = sprTempCharMask1;
        max_spd = 1;
        image_speed = abs(hsp/8);
        //image_speed=0.3;
    }
    else{
        sprite_index = run;
        max_spd = 4;
        image_speed = abs(hsp/10);
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
}

if ((free == 1) && (vsp < -1)){
    //sprite_index = on_air;
    //image_index = 1;
}
if ((free == 1) && (vsp > 0)){
    sprite_index = on_air;
    image_index = 2;
}
if ((free == 1) && (vsp > 1)){
    sprite_index = on_air;
    image_index = 1;
}

return(state_next);

/*

// MOVE

if hsp=0 { //if we're not moving, why are we here?
next_state = st_xstand; //let's set the next state,
return(state_nextnow);} //and get outta here~!

//Normal Sprites
if shot=0{
if free=0 then sprite_index = run //we're on the ground and moving
if free=1 && vsp<-1 {sprite_index = air; image_index=0;} //we're in the air and moving
if free=1 && vsp>0 {sprite_index = air; image_index=1;} //we're falling and moving
}
else{ //Shooting Sprites
if free=0 then sprite_index = runshoot //we're on the ground and moving
if free=1 && vsp<-1 {sprite_index = airshoot; image_index=0;} //we're in the air and moving
if free=1 && vsp>0 {sprite_index = airshoot; image_index=1;} //we're falling and moving
}

//Shooting Sprites

return(state_next)

*/
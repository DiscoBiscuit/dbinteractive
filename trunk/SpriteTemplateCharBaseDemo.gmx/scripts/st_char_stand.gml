if (free == 0){
    sprite_index = stand;
    mask_index = sprTempCharMask1;
    if (keyboard_check_direct(vk_down)){
        sprite_index = crouch;
        mask_index = sprTempCharMask3;
    }
}

if ((free == 1) && (vsp < -1)){
    sprite_index = on_air
    image_index=2
}

if ((free == 1) && (vsp > 0)){
    sprite_index = on_air
    image_index=1
}



/*

//Not Moving

if shot=0{
if free=0 sprite_index = stand //we're not doing anything at all
if free=1 && vsp<-1 {sprite_index = air; image_index=0} //we're in the air and not moving
if free=1 && vsp>0 {sprite_index = air; image_index=1} //we're falling and not moving
}
else{ //we're shooting
if free=0 sprite_index = shoot //we're not doing anything at all
if free=1 && vsp<-1 {sprite_index = airshoot; image_index=0} //we're in the air and not moving
if free=1 && vsp>0 {sprite_index = airshoot; image_index=1} //we're falling and not moving
}

if CTRL=0 then CTRL=1 //If the Zero Engine's controls were disabled, we'll reenable them here.

//NOTE:
//These states are changed directly in the megaman object's button press events
//in order to show an alternate (sometimes simpler!) method of state changing.

*/
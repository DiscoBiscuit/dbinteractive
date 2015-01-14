//Initialize Sprite Variables (in case we use these states for another character)
/*
stand = sprTempCharStand;
run = sprTempCharStride;
on_air = sprTempCharJumps;
walk = sprTempCharWalk;
stride = sprTempCharStride;
crouch = sprTempCharCrouch;
crawl = sprTempCharCrawl;
sneak = sprTempCharSneak;
*/

//image_speed=0.3

//Go to standing state in which we will ALWAYS return to from here on
next_state = st_char_stand 
return(state_nextnow)
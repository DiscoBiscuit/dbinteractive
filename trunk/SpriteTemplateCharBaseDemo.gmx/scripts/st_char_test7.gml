sprite_index = throw;
if (state_time > 60){
    image_speed = 0.3;
    next_state = st_char_stand;
    return(state_next);
}
return(state_continue);
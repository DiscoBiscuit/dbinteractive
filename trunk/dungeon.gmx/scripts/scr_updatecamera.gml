view_xview[0] = (view_xview[0] + (obj_player.x-view_wview/2)*0.25)/1.25;
view_yview[0] = (view_yview[0] + (obj_player.y-view_hview/2)*0.25)/1.25;
view_xview[0] = clamp(view_xview[0],0,room_width-view_wview[0]);
view_yview[0] = clamp(view_yview[0],0,room_height-view_hview[0]);

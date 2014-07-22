var buffer = argument[0]; 
var socket = argument[1]; 
var msgid = buffer_read(buffer,buffer_u8);
var global.clientid = ds_list_find_index(socketlist,socket)+1;

switch(msgid) 
{
    //x position
    case 1:
        with (obj_player_dummy)
        {
            if (global.clientid == clientid)
            {
                x = buffer_read(buffer,buffer_u32);
            }
        }
    break;
    //y position
    case 2:
        //stuff
        with (obj_player_dummy)
        {
            if (global.clientid == clientid)
            {
                y = buffer_read(buffer,buffer_u32);
            }
        }
    break;
    //client disconnected
    case 3:
        obj_server.disconnectid = buffer_read(buffer,buffer_u16);
    break;
    //sprite index
    case 4:
        with (obj_player_dummy)
        {
            if (global.clientid == clientid)
            {
                sprite_index = buffer_read(buffer,buffer_u32);
            }
        }
    //image index
    case 5:
        with (obj_player_dummy)
        {
            if (global.clientid == clientid)
            {
                image_index = buffer_read(buffer,buffer_u32);
            }
        }
    //xscale index
    case 6:
        with (obj_player_dummy)
        {
            if (global.clientid == clientid)
            {
                image_xscale = buffer_read(buffer,buffer_s32);
            }
        }
}

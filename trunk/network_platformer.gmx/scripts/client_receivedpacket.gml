var buffer = argument[0];
var msgid = buffer_read(buffer,buffer_u8);

switch(msgid) 
{
    //receive client ID from server
    case 1:
        obj_client.clientid = buffer_read(buffer,buffer_u32);
        break;
    //receive the time from the server and calculate ping
    case 2:
        var time = buffer_read(buffer,buffer_u32);
        obj_client.Ping = current_time-time;
        break;
    //receive number of players from the server
    case 3:
        break;
    //get other client x
    case 4:
        globalvar idcheck,xset;
        idcheck = buffer_read(buffer,buffer_u16);
        xset = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (idcheck == clientid)
            {
                newx = xset;
            }
        }
        break;
    //get other client y
    case 5:
        globalvar idcheck,yset;
        idcheck = buffer_read(buffer,buffer_u16);
        yset = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (idcheck == clientid)
            {
                newy = yset;
            }
        }
        break;
}

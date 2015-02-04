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
        obj_client.alarm[1] = room_speed*5;
        break;
}

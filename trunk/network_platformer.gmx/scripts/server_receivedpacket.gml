var buffer = argument[0]; 
var socket = argument[1];
var msgid = buffer_read(buffer,buffer_u8);

switch(msgid) 
{
    case 1:
        //Receive ping request from client
        var time = buffer_read(buffer,buffer_u32);
        //send it back to the client
        buffer_seek(buffer,buffer_seek_start,0);
        buffer_write(buffer,buffer_u8,2);
        buffer_write(buffer,buffer_u32,time);
        network_send_packet(socket,buffer,buffer_tell(buffer));
        break;
    case 2:
        //Get client x pos
        globalvar idcheck,xset;
        idcheck = socket;
        xset = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (idcheck == clientid)
            {
                newx = xset;
            }
        }
        //send it to other clients
        buffer_seek(buffer,buffer_seek_start,0);
        buffer_write(buffer,buffer_u8,4);
        buffer_write(buffer,buffer_u16,idcheck);
        buffer_write(buffer,buffer_u32,xset);
        send_toall();
        break;
    case 3:
        //Get client y pos
        globalvar idcheck,yset;
        idcheck = socket;
        yset = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (idcheck == clientid)
            {
                newy = yset;
            }
        }
        //send it to other clients
        buffer_seek(buffer,buffer_seek_start,0);
        buffer_write(buffer,buffer_u8,5);
        buffer_write(buffer,buffer_u16,idcheck);
        buffer_write(buffer,buffer_u32,yset);
        send_toall();
        break;
}

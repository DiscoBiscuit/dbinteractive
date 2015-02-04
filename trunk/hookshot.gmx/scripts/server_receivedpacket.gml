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
}

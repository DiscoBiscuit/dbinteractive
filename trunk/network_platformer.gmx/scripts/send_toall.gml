var clientid = 0;
var socketid = 0;

repeat(ds_list_size(obj_server.socketlist)) 
{
   socketid = ds_list_find_value(obj_server.socketlist,clientid);
   network_send_packet(socketid,obj_server.Buffer,buffer_tell(obj_server.Buffer));
   clientid += 1;
}

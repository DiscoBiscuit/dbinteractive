var buffer = argument[0]; 
var msgid = buffer_read(buffer,buffer_u8);
var exists,ins;
globalvar cupdate,xupdate,yupdate;
switch(msgid) 
{
    //recieve client id
    case 1:
        obj_client.clientid = buffer_read(buffer,buffer_u32);
        break;
    //recieve number of other clients
    case 2:
        obj_client.numplayers = buffer_read(buffer,buffer_u32);
        break;
    //someone else joined
    case 3:
        nnn = instance_create(0,0,obj_player_dummy);
        nnn.clientid = buffer_read(buffer,buffer_u16);
        break;
    //someone else left
    case 4:
        //stuff
        cupdate = buffer_read(buffer,buffer_u16);
        with (obj_player_dummy)
        {
            if (clientid == cupdate)
            {
                instance_destroy();
            }
        }
        break;
    //recieve other client x
    case 5:
        cupdate = buffer_read(buffer,buffer_u16);
        xupdate = buffer_read(buffer,buffer_u32);
        exists = noone;
        for (i=0;i < instance_number(obj_player_dummy);i+=1)
        {
            ins = instance_find(obj_player_dummy,i);
            if (ins.clientid == cupdate)
            {
                exists = ins;
            }
        }
        if (exists == noone)
        {
            nnn = instance_create(0,0,obj_player_dummy);
            nnn.clientid = cupdate;
        }
        with (obj_player_dummy)
        {
            if (clientid == cupdate)
            {
                x = xupdate;
            }
        }
        break;
    //recieve other client y
    case 6:
        cupdate = buffer_read(buffer,buffer_u16);
        yupdate = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (clientid == cupdate)
            {
                y = yupdate;
            }
        }
        break;
    //recieve host's x
    case 7:
        xupdate = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (clientid == 0)
            {
                x = xupdate;
            }
        }
        break;
    //recieve host's y
    case 8:
        yupdate = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (clientid == 0)
            {
                y = yupdate;
            }
        }
        break;
    //recieve host's sprite index
    case 9:
        yupdate = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (clientid == 0)
            {
                sprite_index = yupdate;
            }
        }
        break;
    //recieve host's image index
    case 10:
        xupdate = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (clientid == 0)
            {
                image_index = xupdate;
            }
        }
        break;
    //recieve host's xscale
    case 11:
        yupdate = buffer_read(buffer,buffer_s32);
        with (obj_player_dummy)
        {
            if (clientid == 0)
            {
                image_xscale = yupdate;
            }
        }
        break;
    //recieve other client sprite index
    case 12:
        cupdate = buffer_read(buffer,buffer_u16);
        yupdate = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (clientid == cupdate)
            {
                sprite_index = yupdate;
            }
        }
        break;
    //recieve other client image index
    case 13:
        cupdate = buffer_read(buffer,buffer_u16);
        yupdate = buffer_read(buffer,buffer_u32);
        with (obj_player_dummy)
        {
            if (clientid == cupdate)
            {
                image_index = yupdate;
            }
        }
        break;
    //recieve other client sprite index
    case 14:
        cupdate = buffer_read(buffer,buffer_u16);
        yupdate = buffer_read(buffer,buffer_s32);
        with (obj_player_dummy)
        {
            if (clientid == cupdate)
            {
                image_xscale = yupdate;
            }
        }
        break;
}  

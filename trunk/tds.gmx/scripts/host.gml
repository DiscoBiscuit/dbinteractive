//host(port)
if not instance_exists(obj_server)
{
    with instance_create(0,0,obj_server)
    {
        if argument0 != 0
        {
            Port = argument0;
        }
        else
        {
            Port = 27015;
        }
        print("Starting server on port "+string(Port));
    }
}
else
{
    print("Error: Server already running!");
}

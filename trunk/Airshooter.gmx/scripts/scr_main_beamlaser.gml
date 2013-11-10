//The beam laser idea. Shows that this system can be made more powerful than just creating bullets

var hit_enemy,x1,x2,y1,y2,c1;
if(can_shoot()){

    x1 = l_plane_x(-8,0)+plane_x(48,0,turretang)
    y1 = l_plane_y(-8,0)+plane_y(48,0,turretang)
    x2 = x1+plane_x(512,0,turretang)
    y2 = y1+plane_y(512,0,turretang)

    for(i=1;i<=3;i++)
    {
        hit_enemy = collision_line(x1,y1,x2,y2,obj_enemy,true,true)
        if(instance_exists(hit_enemy))
        {
            hit_enemy.myhealth -= 2
            if(hit_enemy.myhealth<=0)
            {
                with(hit_enemy){instance_destroy()}
            }
        }
    }    
    
    
    c1 = make_color_rgb(128,255,128)
    draw_set_alpha(0.3)
    draw_line_width_color(x1,y1,x2,y2,10,c1,c1)
    draw_line_width_color(x1,y1,x2,y2,6,c1,c1)
    draw_line_width_color(x1,y1,x2,y2,3,c1,c1)
    draw_set_alpha(1)
    
    canshoot = 1
}

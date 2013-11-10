//The second main gun, fires 3 shots in spread pattern

if(can_shoot()){
    
    firebullet(turretx+plane_x(48,0,turretang),turrety+plane_y(48,0,turretang),23,20,turretang-3+random(6),snd_laser,false,1)
    
    part_tankbarrel(turretx,turrety,12)
    
    canshoot = 0
    alarm[0] = 8
    obj_data.score_shotsfired += 1
        //Calculate hit percentage so we don't have to do it every step
    obj_data.score_hitpercentage = obj_data.score_shotshit / obj_data.score_shotsfired * 100
}

//The second main gun, fires 3 shots in spread pattern

if(can_shoot()){
    nnn = instance_create(l_plane_x(-8,0)+lengthdir_x(48,turretang),l_plane_y(-8,0)+lengthdir_y(48,turretang),obj_bullet)
    nnn.direction = turretang
    nnn.speed = 20
    
    part_tankbarrel();
    canshoot = 0
    alarm[0] = 9
    obj_data.score_shotsfired += 1
        //Calculate hit percentage so we don't have to do it every step
    obj_data.score_hitpercentage = obj_data.score_shotshit / obj_data.score_shotsfired * 100
    sound_play(snd_laser)
}

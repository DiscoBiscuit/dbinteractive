
scr_findmatch(argument0,argument1)

for (i=0; i<5; i+=1)
{
    for (j=0; j<9; j+=1)
    {
        if(ds_grid_get(pull,i,j)>0)
        {
            scr_findmatch(i,j);
        };
    };
};
var count;
count = 0
for (i=0; i<5; i+=1)
{
    for (j=0; j<9; j+=1)
    {
        if(ds_grid_get(pull,i,j)>0)
        {
            count += 1;
        };
    };
};
var soundplayed;
soundplayed = 0
if(count>=3)
{
    for (i=0; i<5; i+=1)
    {
        for (j=0; j<9; j+=1)
        {
            if(ds_grid_get(pull,i,j)>0 and ds_grid_get(maingrid,i,j) != 0)
            {
                //part_type_sprite(global.donutpart,donutspr[ds_grid_get(maingrid,i,j)],0,0,0)
                //part_particles_create(global.donutpart,(i*64)+50,(j*64)+32,global.donutpart1,1);
                with (instance_create(i*64,j*64,obj_donut_matcheffect))
                {
                    if (ds_grid_get(obj_control.sprinklegrid,obj_control.i,obj_control.j) == 1)
                    {
                        bonus = 1
                    }
                    else{
                        bonus = 0
                    }
                    sprite_index = obj_control.donutspr[ds_grid_get(obj_control.maingrid,obj_control.i,obj_control.j)]
                }
                if not (sound_isplaying(snd_match)) and soundplayed == 0
                {
                    audio_sound_pitch(snd_match,(clamp(1+global.combo/10,1,5)))
                    obj_control.alarm[1] = 1
                    global.combo += 1
                    global.streak += 1
                    soundplayed = 1
                }
                if (ds_grid_get(sprinklegrid,i,j) == 0)
                {
                    score += clamp(global.combo * 5,5,100) + global.streak
                    global.addscore = clamp(global.combo * 5,5,100) + global.streak
                }
                else
                {
                    score += (clamp(global.combo * 5,5,100) + global.streak) * 2
                    global.addscore = (clamp(global.combo * 5,5,100) + global.streak) * 2
                }
                ds_grid_set(maingrid,i,j,0)
                ds_grid_set(sprinklegrid,i,j,0)
                with (instance_create(i*64+32,j*64,obj_effect_score))
                {
                    scoresfx = global.addscore;
                };
                
            };
        };
    };
}

ds_grid_clear(pull,0)

//Check for bad donuts at the bottom of the screen
for (i=0; i<5; i+=1)
{
    if (ds_grid_get(obj_control.maingrid,i,8) == 9)
    {
        ds_grid_set(maingrid,i,8,0)
    }
}

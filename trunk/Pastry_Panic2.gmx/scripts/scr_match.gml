scr_findmatch(argument0,argument1)

for (i=0; i<grid_width_cells; i+=1)
{
    for (j=0; j<grid_height_cells; j+=1)
    {
        if(ds_grid_get(pull,i,j)>0)
        {
            scr_findmatch(i,j);
        };
    };
};
var count;
count = 0
for (i=0; i<grid_width_cells; i+=1)
{
    for (j=0; j<grid_height_cells; j+=1)
    {
        if(ds_grid_get(pull,i,j)>0)
        {
            count += 1;
        };
    };
};
var soundplayed = 0;
if(count>=3)
{
    for (i=0; i<grid_width_cells; i+=1)
    {
        for (j=0; j<grid_height_cells; j+=1)
        {
            if(ds_grid_get(pull,i,j)>0 and ds_grid_get(grid,i,j) != 0)
            {
                if (obj_control.gamestart == 1)
                {
                    if (soundplayed == 0)
                    {
                        audio_sound_pitch(snd_match,min(1.5,1+(combo/10)));
                        combo += 1
                        audio_play_sound(snd_match,0,false);
                        soundplayed = 1;
                    }
                    var xx = grid_x+(i*donut_width);
                    var yy = grid_y+(j*donut_height);
                    new = instance_create(xx,yy,obj_donut_match);
                    new.image_index = ds_grid_get(grid,i,j);
                    ds_grid_set(grid,i,j,0)
                    obj_control.donutqueue[i] += 1;
                    nn = instance_create(xx,yy,obj_score_fx);
                    nn.num = obj_control.score_perdonut+((combo-1)*5);
                }
                else
                {
                    if (obj_control.startmatch == 0)
                    {
                        ds_grid_shuffle(grid);
                        obj_control.startmatch = 1;
                    }
                }
            };
        };
    };
    scr_felldonuts();
}
ds_grid_clear(pull,0)

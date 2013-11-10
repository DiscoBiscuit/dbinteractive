obj_player.playerhealth += min(0,obj_player.playershield-argument0)
obj_player.playershield = max(0,obj_player.playershield-argument0)

obj_player.shieldrecharging = 0
obj_player.alarm[1] = 120*global.difficulty //Shield recharge delay

obj_data.score_damagetaken += argument0 //Score stuffs
            
if(obj_player.playershield > 0)
{
obj_player.shieldalpha = 1
obj_player.shielddir = point_direction(obj_player.x,obj_player.y,x,y)
sound_play(snd_shieldimpact)
}
else
{
obj_data.score_damagetaken += argument0 //Score stuffs
obj_camera.screenshake = min(obj_camera.screenshake+5,25)
}

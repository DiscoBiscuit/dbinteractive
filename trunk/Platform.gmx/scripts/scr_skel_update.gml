//Skeletal points
skel_pelvis[0] = x
skel_pelvis[1] = y
skel_torso[0] = skel_pelvis[0] + lengthdir_x(50,skel_torso_dir)
skel_torso[1] = skel_pelvis[1] + lengthdir_y(50,skel_torso_dir)
skel_lshoulder[0] = skel_torso[0] + lengthdir_x(10,skel_lshoulder_dir)
skel_lshoulder[1] = skel_torso[1] + lengthdir_y(10,skel_lshoulder_dir)
skel_rshoulder[0] = skel_torso[0] + lengthdir_x(10,skel_rshoulder_dir)
skel_rshoulder[1] = skel_torso[1] + lengthdir_y(10,skel_rshoulder_dir)
skel_lelbow[0] = skel_lshoulder[0] + lengthdir_x(20,skel_lelbow_dir)
skel_lelbow[1] = skel_lshoulder[1] + lengthdir_y(20,skel_lelbow_dir)
skel_relbow[0] = skel_rshoulder[0] + lengthdir_x(20,skel_relbow_dir)
skel_relbow[1] = skel_rshoulder[1] + lengthdir_y(20,skel_relbow_dir)
skel_lhand[0] = skel_lelbow[0] + lengthdir_x(20,skel_lhand_dir)
skel_lhand[1] = skel_lelbow[1] + lengthdir_y(20,skel_lhand_dir)
skel_rhand[0] = skel_relbow[0] + lengthdir_x(20,skel_rhand_dir)
skel_rhand[1] = skel_relbow[1] + lengthdir_y(20,skel_rhand_dir)
if (facing == 1)
{
    skel_weapon1[0] = skel_rhand[0] + lengthdir_x(80,skel_weapon1_dir)
    skel_weapon1[1] = skel_rhand[1] + lengthdir_y(80,skel_weapon1_dir)
}
else
{
    skel_weapon1[0] = skel_lhand[0] + lengthdir_x(80,skel_weapon1_dir)
    skel_weapon1[1] = skel_lhand[1] + lengthdir_y(80,skel_weapon1_dir)
}
skel_pelvis_dir = rotate(skel_pelvis_dir,skel_pelvis_dir_g,skel_speed)
skel_torso_dir = rotate(skel_torso_dir,skel_torso_dir_g,skel_speed)
skel_lshoulder_dir = rotate(skel_lshoulder_dir,skel_lshoulder_dir_g,skel_speed)
skel_rshoulder_dir = rotate(skel_rshoulder_dir,skel_rshoulder_dir_g,skel_speed)
skel_lelbow_dir = rotate(skel_lelbow_dir,skel_lelbow_dir_g,skel_speed)
skel_relbow_dir = rotate(skel_relbow_dir,skel_relbow_dir_g,skel_speed)
skel_lhand_dir = rotate(skel_lhand_dir,skel_lhand_dir_g,skel_speed)
skel_rhand_dir = rotate(skel_rhand_dir,skel_rhand_dir_g,skel_speed)
skel_weapon1_dir = rotate(skel_weapon1_dir,skel_weapon1_dir_g,skel_weaponspeed)


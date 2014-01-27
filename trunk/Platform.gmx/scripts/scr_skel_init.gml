//Directions for use in animations (these are NOT relative)
skel_pelvis_dir = 0
skel_torso_dir = 90
skel_lshoulder_dir = 180
skel_rshoulder_dir = 0
skel_lelbow_dir = 180
skel_relbow_dir = 0
skel_lhand_dir = 180
skel_rhand_dir = 0
skel_weapon1_dir = 180

//Lengths of bones
skel_pelvis_ln = 0
skel_torso_ln = 50
skel_lshoulder_ln = 10
skel_rshoulder_ln = 10
skel_lelbow_ln = 20
skel_relbow_ln = 20
skel_lhand_ln = 20
skel_rhand_ln = 20
skel_weapon1_ln = 80

//Goals for the directions, the above is the in-betweens for smoothing
skel_pelvis_dir_g = 0
skel_torso_dir_g = 90
skel_lshoulder_dir_g = 180
skel_rshoulder_dir_g = 0
skel_lelbow_dir_g = 180
skel_relbow_dir_g = 0
skel_lhand_dir_g = 180
skel_rhand_dir_g = 0
skel_weapon1_dir_g = 180

skel_speed = 12
skel_weaponspeed = 24
//Skeletal points
skel_pelvis[0] = x
skel_pelvis[1] = y
skel_torso[0] = skel_pelvis[0] + lengthdir_x(skel_torso_ln,skel_torso_dir)
skel_torso[1] = skel_pelvis[1] + lengthdir_y(skel_torso_ln,skel_torso_dir)
skel_lshoulder[0] = skel_torso[0] + lengthdir_x(skel_lshoulder_ln,skel_lshoulder_dir)
skel_lshoulder[1] = skel_torso[1] + lengthdir_y(skel_lshoulder_ln,skel_lshoulder_dir)
skel_rshoulder[0] = skel_torso[0] + lengthdir_x(skel_rshoulder_ln,skel_rshoulder_dir)
skel_rshoulder[1] = skel_torso[1] + lengthdir_y(skel_rshoulder_ln,skel_rshoulder_dir)
skel_lelbow[0] = skel_lshoulder[0] + lengthdir_x(skel_lelbow_ln,skel_lelbow_dir)
skel_lelbow[1] = skel_lshoulder[1] + lengthdir_y(skel_lelbow_ln,skel_lelbow_dir)
skel_relbow[0] = skel_rshoulder[0] + lengthdir_x(skel_relbow_ln,skel_relbow_dir)
skel_relbow[1] = skel_rshoulder[1] + lengthdir_y(skel_relbow_ln,skel_relbow_dir)
skel_lhand[0] = skel_lelbow[0] + lengthdir_x(skel_lhand_ln,skel_lhand_dir)
skel_lhand[1] = skel_lelbow[1] + lengthdir_y(skel_lhand_ln,skel_lhand_dir)
skel_rhand[0] = skel_relbow[0] + lengthdir_x(skel_rhand_ln,skel_rhand_dir)
skel_rhand[1] = skel_relbow[1] + lengthdir_y(skel_rhand_ln,skel_rhand_dir)
skel_weapon1[0] = skel_rhand[0] + lengthdir_x(skel_weapon1_ln,skel_weapon1_dir)
skel_weapon1[1] = skel_rhand[1] + lengthdir_y(skel_weapon1_ln,skel_weapon1_dir)

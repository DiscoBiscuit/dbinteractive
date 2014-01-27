//Skeletal points
skel_pelvis[0] = x
skel_pelvis[1] = y
skel_torso[0] = skel_pelvis[0] + lengthdir_x(50,skel_torso_dir)
skel_torso[1] = skel_pelvis[1] + lengthdir_y(50,skel_torso_dir)
skel_lshoulder[0] = skel_torso[0] + lengthdir_x(10,skel_lshoulder_dir)
skel_lshoulder[1] = skel_torso[1] + lengthdir_y(10,skel_lshoulder_dir)
skel_rshoulder[0] = skel_torso[0] + lengthdir_x(10,skel_rshoudler_dir)
skel_rshoulder[1] = skel_torso[1] + lengthdir_y(10,skel_rshoulder_dir)
skel_lelbow[0] = skel_lshoulder[0] + lengthdir_x(20,skel_lelbow_dir)
skel_lelbow[1] = skel_lshoulder[1] + lengthdir_y(20,skel_lelbow_dir)
skel_relbow[0] = skel_rshoulder[0] + lengthdir_x(20,skel_relbow_dir)
skel_relbow[1] = skel_rshoulder[1] + lengthdir_y(20,skel_relbow_dir)
skel_lhand[0] = skel_lelbow[0] + lengthdir_x(20,skel_lhand_dir)
skel_lhand[1] = skel_lelbow[1] + lengthdir_y(20,skel_lhand_dir)
skel_rhand[0] = skel_relbow[0] + lengthdir_x(20,skel_rhand_dir)
skel_rhand[1] = skel_relbow[1] + lengthdir_y(20,skel_rhand_dir)

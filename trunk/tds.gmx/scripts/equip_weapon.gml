//Do this whenever a new weapon is equipped
//equip_weapon("weapon_name");
weapon_type = argument0;
switch weapon_type
{
    case "debug_rifle":
        weapon_delay = 10; //Time in between shots in ms
        weapon_damage = 10; //Damage to apply to enemies per shot
        weapon_firemode = 1; //0 is semi 1 is automatic
        weapon_projectile = 0; //Set to 0 unless weapon fires an object
        weapon_sprite = spr_rifle; //Sprite of the weapon
    break;
}

weapons[0] = ds_map_create();
//Unarmed
ds_map_add(weapons[0], "sprite", -1);
ds_map_add(weapons[0], "recoil", 0);
ds_map_add(weapons[0], "recoil_push", 0);
ds_map_add(weapons[0], "damage", 0);
ds_map_add(weapons[0], "projectile", -1);
ds_map_add(weapons[0], "cooldown", 0);
ds_map_add(weapons[0], "startup", 0);
ds_map_add(weapons[0], "bulletspeed", 0);
ds_map_add(weapons[0], "length", 0);

//RPG
weapons[1] = ds_map_create();
ds_map_add(weapons[1], "sprite", sWeapon_RPG);
ds_map_add(weapons[1], "recoil", 20);
ds_map_add(weapons[1], "recoil_push", 10);
ds_map_add(weapons[1], "damage", 1);
ds_map_add(weapons[1], "projectile", sBullet_RPG);
ds_map_add(weapons[1], "cooldown", 20);
ds_map_add(weapons[1], "startup", 0);
ds_map_add(weapons[1], "bulletspeed", 3);
ds_map_add(weapons[1], "length", 60);

//AR
weapons[2] = ds_map_create();
ds_map_add(weapons[2], "sprite", sWeapon_AR);
ds_map_add(weapons[2], "recoil", 10);
ds_map_add(weapons[2], "recoil_push", 3);
ds_map_add(weapons[2], "damage", 1);
ds_map_add(weapons[2], "projectile", sBullet_AR);
ds_map_add(weapons[2], "cooldown", 5);
ds_map_add(weapons[2], "startup", 0);
ds_map_add(weapons[2], "bulletspeed", 5);
ds_map_add(weapons[2], "length", 15);

ammo[array_length_1d(weapons) - 1] = 0;
ammo[0] = -1;

ChangeWeapon(0);

current_cd = 0;
current_delay = -1;
current_recoil = 0;
xpoint = x;
ypoint = y;


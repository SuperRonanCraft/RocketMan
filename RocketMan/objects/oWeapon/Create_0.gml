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
ds_map_add(weapons[1], "sprite", sGun);
ds_map_add(weapons[1], "recoil", 20);
ds_map_add(weapons[1], "recoil_push", 10);
ds_map_add(weapons[1], "damage", 1);
ds_map_add(weapons[1], "projectile", oMissle);
ds_map_add(weapons[1], "cooldown", 20);
ds_map_add(weapons[1], "startup", 0);
ds_map_add(weapons[1], "bulletspeed", 0);
ds_map_add(weapons[1], "length", 0);

ammo[array_length_1d(weapons) - 1] = 0;
ammo[0] = -1;

ChangeWeapon(0);

current_cd = 0;
current_delay = -1;
current_recoil = 0;
xpoint = x - 1;
ypoint = y;


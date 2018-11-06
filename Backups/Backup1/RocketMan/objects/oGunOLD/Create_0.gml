weapons[0] = ds_map_create();
//Unarmed
ds_map_add(weapons[0], "sprite", -1);
ds_map_add(weapons[0], "recoil", 0);
ds_map_add(weapons[0], "damage", 0);
ds_map_add(weapons[0], "projectile", -1);
ds_map_add(weapons[0], "cooldown", 0);
ds_map_add(weapons[0], "speed", 0);
ds_map_add(weapons[0], "length", 0);

//RPG
ds_map_add(weapons[0], "sprite", sGun);
ds_map_add(weapons[0], "recoil", 5);
ds_map_add(weapons[0], "damage", 1);
ds_map_add(weapons[0], "projectile", oMissle);
ds_map_add(weapons[0], "cooldown", 0);
ds_map_add(weapons[0], "speed", 0);
ds_map_add(weapons[0], "length", 0);

weapon = 0;
ammo[array_length_1d(weapons) - 1] = 0;
ammo[0] = -1;
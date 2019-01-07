//RPG
var wep = ROCKET.NONE;
weapons[wep] = ds_map_create();

wep = ROCKET.DEFAULT;
weapons[wep] = ds_map_create();
ds_map_add(weapons[wep], ROCKET_MAP.RECOIL, 20);
//ds_map_add(weapons[1], "recoil_push", 10);
ds_map_add(weapons[wep], ROCKET_MAP.DAMAGE, 4);
ds_map_add(weapons[wep], ROCKET_MAP.PROJECTILE, sBullet_RPG);
ds_map_add(weapons[wep], ROCKET_MAP.WEAPON_SPRITE, sWeapon_Default);
ds_map_add(weapons[wep], ROCKET_MAP.COOLDOWN, 5);
ds_map_add(weapons[wep], ROCKET_MAP.STARTUP, 0);
ds_map_add(weapons[wep], ROCKET_MAP.SPEED, 20);
ds_map_add(weapons[wep], ROCKET_MAP.OFFSET, 0);
ds_map_add(weapons[wep], ROCKET_MAP.CLIP, 20);
ds_map_add(weapons[wep], ROCKET_MAP.RELOAD_TIME, 40);

/*//AR
weapons[2] = ds_map_create();
ds_map_add(weapons[2], "sprite", sWeapon_AR);
ds_map_add(weapons[2], "recoil", 10);
ds_map_add(weapons[2], "recoil_push", 3);
ds_map_add(weapons[2], "damage", 1);
ds_map_add(weapons[2], "projectile", sBullet_AR);
ds_map_add(weapons[2], "cooldown", 5);
ds_map_add(weapons[2], "startup", 0);
ds_map_add(weapons[2], "bulletspeed", 20);
ds_map_add(weapons[2], "length", 30);
ds_map_add(weapons[2], "clip", 20);
ds_map_add(weapons[2], "reload_time", 60);

//SMG
weapons[3] = ds_map_create();
ds_map_add(weapons[3], "sprite", sWeapon_SMG);
ds_map_add(weapons[3], "recoil", 6);
ds_map_add(weapons[3], "recoil_push", 3);
ds_map_add(weapons[3], "damage", 1);
ds_map_add(weapons[3], "projectile", sBullet_AR);
ds_map_add(weapons[3], "cooldown", 2);
ds_map_add(weapons[3], "startup", 0);
ds_map_add(weapons[3], "bulletspeed", 25);
ds_map_add(weapons[3], "length", 24);
ds_map_add(weapons[3], "clip", 14);
ds_map_add(weapons[3], "reload_time", 45);*/

//ammo[array_length_1d(weapons) - 1] = 0;
//ammo[0] = -1;

current_cd = 0;
current_delay = -1;
current_recoil = 0;
xpoint = x;
ypoint = y;
current_reload = 0;
weapon_dir = direction;
weapon_sprite = noone;
weapon_map = ds_map_create();
scWeaponChange(ROCKET.NONE);

enum ROCKET {
	NONE,
	DEFAULT, 
	
	//KEEP LAST
	LENGHT
}

enum ROCKET_MAP {
	//BASIC VARIABLES
	RECOIL, WEAPON_SPRITE, PROJECTILE, COOLDOWN, SPEED, OFFSET, STARTUP, CLIP, RELOAD_TIME,
	TIMER, IGNORE_WALL, NAME, DESCRIPTION, BUFF, TYPE, ENABLED,
	//DAMAGE TYPES
	DAMAGE, DAMAGE_ROCKET, DAMAGE_EXPLOSION,
	//ROCKET EVENTS
	ROCKET_CREATE, ROCKET_STEP, ROCKET_DRAW, ROCKET_DESTROY,
	//PARTICLES
	PARTICLE_TRAIL, PARTICLE_EXPLOSION, PARTICLE_AMT,
	//CAMERA SHAKE
	SHAKE_MAGNITUDE, SHAKE_FRAMES,
	//EXPLOSION SCRIPTS
	EXPLOSION_SPRITE, EXPLOSION_ROCKET, EXPLOSION_WALL, EXPLOSION_SHOOTABLE, EXPLOSION_STEP, EXPLOSION_CREATE,
	//SOUND EFFECTS
	SOUND_EXPLOSION, SOUND_SHOOT
}
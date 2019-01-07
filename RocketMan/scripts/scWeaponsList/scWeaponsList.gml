/// @arg Grab a weapons list

var weapons;

//RPG
var wep = WEAPON.NONE;
weapons[wep] = ds_map_create();

wep = WEAPON.DEFAULT;
weapons[wep] = ds_map_create();
ds_map_add(weapons[wep], WEAPON_MAP.RECOIL, 20);
//ds_map_add(weapons[1], "recoil_push", 10);
ds_map_add(weapons[wep], WEAPON_MAP.DAMAGE, 4);
ds_map_add(weapons[wep], WEAPON_MAP.PROJECTILE, sBullet_Default);
ds_map_add(weapons[wep], WEAPON_MAP.WEAPON_SPRITE, sWeapon_Default);
ds_map_add(weapons[wep], WEAPON_MAP.COOLDOWN, 5);
ds_map_add(weapons[wep], WEAPON_MAP.STARTUP, 0);
ds_map_add(weapons[wep], WEAPON_MAP.SPEED, 20);
ds_map_add(weapons[wep], WEAPON_MAP.OFFSET, 0);
ds_map_add(weapons[wep], WEAPON_MAP.CLIP, 20);
ds_map_add(weapons[wep], WEAPON_MAP.RELOAD_TIME, 40);

return weapons[argument0];

enum WEAPON {
	NONE,
	DEFAULT, 
	
	//KEEP LAST
	LENGHT
}

enum WEAPON_MAP {
	//BASIC VARIABLES
	RECOIL, WEAPON_SPRITE, PROJECTILE, COOLDOWN, SPEED, OFFSET, STARTUP, CLIP, RELOAD_TIME,
	TIMER, IGNORE_WALL, NAME, DESCRIPTION, BUFF, TYPE, ENABLED,
	//DAMAGE TYPES
	DAMAGE, DAMAGE_ROCKET, DAMAGE_EXPLOSION,
	//ROCKET EVENTS
	WEAPON_CREATE, WEAPON_STEP, WEAPON_DRAW, WEAPON_DESTROY,
	//PARTICLES
	PARTICLE_TRAIL, PARTICLE_EXPLOSION, PARTICLE_AMT,
	//CAMERA SHAKE
	SHAKE_MAGNITUDE, SHAKE_FRAMES,
	//EXPLOSION SCRIPTS
	EXPLOSION_SPRITE, EXPLOSION_ROCKET, EXPLOSION_WALL, EXPLOSION_SHOOTABLE, EXPLOSION_STEP, EXPLOSION_CREATE,
	//SOUND EFFECTS
	SOUND_EXPLOSION, SOUND_SHOOT
}
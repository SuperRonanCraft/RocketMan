/// @desc Set all the default values for a Rockets WEAPON_MAP
/// @arg ds_map The map to set all the values to

var wep_map = ds_map_create();
wep_map[? WEAPON_MAP.RECOIL] = 0; //Amount of recoil to push the player back
wep_map[? WEAPON_MAP.PROJECTILE] = noone; //Sprite to show
wep_map[? WEAPON_MAP.COOLDOWN] = 0; //Cooldown between shots
wep_map[? WEAPON_MAP.SPEED] = 0; //Speed of rocket
wep_map[? WEAPON_MAP.OFFSET] = 30; //offset to spawn the rocket
wep_map[? WEAPON_MAP.STARTUP] = 0; //Delay between clicking the shoot key and launching
wep_map[? WEAPON_MAP.CLIP] = -1; //How much 
wep_map[? WEAPON_MAP.RELOAD_TIME] = -1; //Reload time
wep_map[? WEAPON_MAP.TIMER] = -1; //Up-time
wep_map[? WEAPON_MAP.IGNORE_WALL] = false; //allow wall clipping
wep_map[? WEAPON_MAP.NAME] = "default"; //Name of rocket (must have)
wep_map[? WEAPON_MAP.DESCRIPTION] = "Uh... Nothing?"; //Description of rocket (must have)
wep_map[? WEAPON_MAP.TYPE] = WEAPON.NONE; //Rocket type (must have)
wep_map[? WEAPON_MAP.BUFF] = noone; //The buffs a rocket has (array)
wep_map[? WEAPON_MAP.ENABLED] = true; //Is the rocket enabled in-game?
wep_map[? WEAPON_MAP.WEAPON_SPRITE] = noone; //Is the rocket enabled in-game?
//DAMAGES
wep_map[? WEAPON_MAP.DAMAGE] = 1; //Base damage
wep_map[? WEAPON_MAP.DAMAGE_ROCKET] = 0; //Damage by direct rocket
wep_map[? WEAPON_MAP.DAMAGE_EXPLOSION] = 0; //Damage by explosion splash
//ROCKET EVENTS
wep_map[? WEAPON_MAP.WEAPON_CREATE] = noone; //Event when a rocket is created (adds)
wep_map[? WEAPON_MAP.WEAPON_STEP] = noone; //Step event (overrides movement)
wep_map[? WEAPON_MAP.WEAPON_DRAW] = noone; //Draw event for rockets (adds)
wep_map[? WEAPON_MAP.WEAPON_DESTROY] = noone; //The rocket destroy script (adds)
//PARTICLES
wep_map[? WEAPON_MAP.PARTICLE_TRAIL] = noone; //rocket particle trail
wep_map[? WEAPON_MAP.PARTICLE_EXPLOSION] = noone; //Explosion particle
wep_map[? WEAPON_MAP.PARTICLE_AMT] = 1; //rocket particle trail
//SCREEN SHAKE
wep_map[? WEAPON_MAP.SHAKE_MAGNITUDE] = 2; //Screen shake magnitude
wep_map[? WEAPON_MAP.SHAKE_FRAMES] = 8; //Screen shake frame
//EXPLOSIONS
//wep_map[? WEAPON_MAP.EXPLOSION_SPRITE] = sexplosion_Default; //Sprite of explosion
wep_map[? WEAPON_MAP.EXPLOSION_CREATE] = noone; //Only if no event for rocket, wall or shootable
wep_map[? WEAPON_MAP.EXPLOSION_ROCKET] = noone; //Explosion with a rocket
wep_map[? WEAPON_MAP.EXPLOSION_WALL] = noone; //Explosion with a wall
wep_map[? WEAPON_MAP.EXPLOSION_SHOOTABLE] = noone; //Explosion with a shootable
wep_map[? WEAPON_MAP.EXPLOSION_STEP] = noone; //Explosion step event
//SOUNDS
//wep_map[? WEAPON_MAP.SOUND_SHOOT] = SOUND.EFFECT_SHOOT; //Rocket shoot sound
//wep_map[? WEAPON_MAP.SOUND_EXPLOSION] = SOUND.EFFECT_EXP; //Rocket explode sound
//ULTIMATE
//wep_map[? WEAPON_MAP.ULTIMATE] = ULTIMATE.DEFAULT; //The rockets ultimate power
//wep_map[? WEAPON_MAP.ULTIMATE_CHARGE_GIVE] = true; //If the rocket should give ultcharge
//wep_map[? WEAPON_MAP.ULTIMATE_CHARGE_MULTIPLIER] = 1; //Multiplier offset of a specific rocket 1 for none

var map = argument0;
map = wep_map;
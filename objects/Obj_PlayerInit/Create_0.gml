global.inventory = ds_map_create();
global.inventory[?"Weapon"] = noone;
global.inventory[?"Spell 1"] = noone;
global.inventory[?"Spell 2"] = noone;
global.inventory[?"Spell 3"] = noone;
global.inventory[?"Heal 1"] = noone;
global.inventory[?"Heal 2"] = noone;
global.inventory[?"Heal 3"] = noone;
global.inventory[?"Enchant 1"] = noone;
global.inventory[?"Enchant 2"] = noone;
global.level = 1;
global.nextLvlXp = exp(global.level);
global.maxHp = 100 + global.level * 20;
global.hp = global.maxHp;
global.damageMultiplier = 1;

global.typetable = ds_map_create();

global.typetable[?TYPE.FIRE] = ds_map_create();
global.typetable[?TYPE.FIRE[?TYPE.WATER]] = 0;
global.typetable[?TYPE.FIRE[?TYPE.FIRE]]  = 0;
global.typetable[?TYPE.FIRE[?TYPE.EARTH]] = 2;
global.typetable[?TYPE.FIRE[?TYPE.LIGHT]] = 1;
global.typetable[?TYPE.FIRE[?TYPE.DARK]]  = 1;
global.typetable[?TYPE.FIRE[?TYPE.NONE]]  = 1;

global.typetable[?TYPE.WATER] = ds_map_create();
global.typetable[?TYPE.WATER[?TYPE.WATER]] = 0;
global.typetable[?TYPE.WATER[?TYPE.FIRE]]  = 2;
global.typetable[?TYPE.WATER[?TYPE.EARTH]] = 0;
global.typetable[?TYPE.WATER[?TYPE.LIGHT]] = 1;
global.typetable[?TYPE.WATER[?TYPE.DARK]]  = 1;
global.typetable[?TYPE.WATER[?TYPE.NONE]]  = 1;

global.typetable[?TYPE.EARTH] = ds_map_create();
global.typetable[?TYPE.EARTH[?TYPE.WATER]] = 2;
global.typetable[?TYPE.EARTH[?TYPE.FIRE]]  = 0;
global.typetable[?TYPE.EARTH[?TYPE.EARTH]] = 0;
global.typetable[?TYPE.EARTH[?TYPE.LIGHT]] = 2;
global.typetable[?TYPE.EARTH[?TYPE.DARK]]  = 0;
global.typetable[?TYPE.EARTH[?TYPE.NONE]]  = 1;

global.typetable[?TYPE.LIGHT] = ds_map_create();
global.typetable[?TYPE.LIGHT[?TYPE.WATER]] = 1;
global.typetable[?TYPE.LIGHT[?TYPE.FIRE]]  = 1;
global.typetable[?TYPE.LIGHT[?TYPE.EARTH]] = 0;
global.typetable[?TYPE.LIGHT[?TYPE.LIGHT]] = 1;
global.typetable[?TYPE.LIGHT[?TYPE.DARK]]  = 2;
global.typetable[?TYPE.LIGHT[?TYPE.NONE]]  = 1;

global.typetable[?TYPE.DARK] = ds_map_create();
global.typetable[?TYPE.DARK[?TYPE.WATER]] = 1;
global.typetable[?TYPE.DARK[?TYPE.FIRE]]  = 1;
global.typetable[?TYPE.DARK[?TYPE.EARTH]] = 2;
global.typetable[?TYPE.DARK[?TYPE.LIGHT]] = 0;
global.typetable[?TYPE.DARK[?TYPE.DARK]]  = 1;
global.typetable[?TYPE.DARK[?TYPE.NONE]]  = 1;

global.typetable[?TYPE.NONE] = ds_map_create();
global.typetable[?TYPE.NONE[?TYPE.WATER]] = 1;
global.typetable[?TYPE.NONE[?TYPE.FIRE]]  = 1;
global.typetable[?TYPE.NONE[?TYPE.EARTH]] = 1;
global.typetable[?TYPE.NONE[?TYPE.LIGHT]] = 1;
global.typetable[?TYPE.NONE[?TYPE.DARK]]  = 1;
global.typetable[?TYPE.NONE[?TYPE.NONE]]  = 1;

enum TYPE {
	FIRE,
	WATER,
	EARTH,
	LIGHT,
	DARK,
	NONE
}	

instance_destroy();
global.inventory = ds_map_create();
global.inventory[?"Weapon"] = noone;
global.inventory[?"Armor"] = noone;
global.inventory[?"Spell 1"] = noone;
global.inventory[?"Spell 2"] = noone;
global.inventory[?"Spell 3"] = noone;
global.inventory[?"Heal 1"] = noone;
global.inventory[?"Heal 2"] = noone;
global.level = 1;
global.nextLvlXp = exp(global.level);
global.maxHp = 100 + (global.level-1) * 20;
global.hp = global.maxHp;
global.damageMultiplier = 1;

global.takenitems = ds_list_create();

enum TYPE {
	FIRE,
	WATER,
	EARTH,
	LIGHT,
	DARK,
	NONE
}	

global.typetable[0, 1] = 0;
global.typetable[0, 0]  = 0;
global.typetable[0, 2] = 2;
global.typetable[0, 3] = 1;
global.typetable[0, 4]  = 1;
global.typetable[0, 5]  = 1;

global.typetable[1, 1] = 0;
global.typetable[1, 0] = 2;
global.typetable[1, 2] = 0;
global.typetable[1, 3] = 1;
global.typetable[1, 4] = 1;
global.typetable[1, 5] = 1;

global.typetable[2, 1] = 2;
global.typetable[2, 0] = 0;
global.typetable[2, 2] = 0;
global.typetable[2, 3] = 2;
global.typetable[2, 4] = 0;
global.typetable[2, 5] = 1;

global.typetable[3, 1] = 1;
global.typetable[3, 0] = 1;
global.typetable[3, 2] = 0;
global.typetable[3, 3] = 1;
global.typetable[3, 4] = 2;
global.typetable[3, 5] = 1;

global.typetable[4, 1] = 1;
global.typetable[4, 0] = 1;
global.typetable[4, 2] = 2;
global.typetable[4, 3] = 0;
global.typetable[4, 4] = 1;
global.typetable[4, 5] = 1;

global.typetable[5, 1] = 1;
global.typetable[5, 0] = 1;
global.typetable[5, 2] = 1;
global.typetable[5, 3] = 1;
global.typetable[5, 4] = 1;
global.typetable[5, 5] = 1;

global.fontMetrics_menu = noone;
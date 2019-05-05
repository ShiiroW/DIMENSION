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

instance_destroy();
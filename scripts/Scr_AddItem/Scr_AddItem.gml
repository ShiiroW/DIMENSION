if (argument0.category == "Weapon") {
	global.inventory[?"Weapon"] = argument0;
	return;
}
if (argument0.category == "Heal") {
	if (global.inventory[?"Heal 1"] == noone) global.inventory[?"Heal 1"] = argument0;
	else if (global.inventory[?"Heal 1"] == noone) global.inventory[?"Heal 2"] = argument0;
}
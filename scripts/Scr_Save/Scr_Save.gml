var file = file_text_open_write("savefile.gm");

file_text_write_real(file, room);
file_text_writeln(file);
file_text_write_real(file, Obj_Player.x);
file_text_writeln(file);
file_text_write_real(file, Obj_Player.y);
file_text_writeln(file);
file_text_write_real(file, global.damageMultiplier);
file_text_writeln(file);
file_text_write_real(file, global.level);
file_text_writeln(file);
file_text_write_real(file, global.maxHp);
file_text_writeln(file);
file_text_write_real(file, global.hp);
file_text_writeln(file);
if (global.inventory[? "Weapon"] != noone) file_text_write_string(file, global.inventory[? "Weapon"].object_index);
else file_text_write_string(file, " ");
file_text_writeln(file);
if (global.inventory[? "Armor"] != noone) file_text_write_string(file, global.inventory[? "Armor"].object_index);
else file_text_write_string(file, " ");
file_text_writeln(file);
if (global.inventory[? "Heal 1"] != noone) file_text_write_string(file, global.inventory[? "Heal 1"].object_index);
else file_text_write_string(file, " ");
file_text_writeln(file);
if (global.inventory[? "Heal 2"] != noone) file_text_write_string(file, global.inventory[? "Heal 2"].object_index);
else file_text_write_string(file, " ");
file_text_writeln(file);
if (global.inventory[? "Spell 1"] != noone) file_text_write_string(file, global.inventory[? "Spell 1"].object_index);
else file_text_write_string(file, " ");
file_text_writeln(file);
if (global.inventory[? "Spell 2"] != noone) file_text_write_string(file, global.inventory[? "Spell 2"].object_index);
else file_text_write_string(file, " ");
file_text_writeln(file);
if (global.inventory[? "Spell 3"] != noone) file_text_write_string(file, global.inventory[? "Spell 3"].object_index);
else file_text_write_string(file, " ");
file_text_writeln(file);

Scr_SaveItems();

/*file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);
file_text_write_string(file, global.playername);*/

file_text_close(file);
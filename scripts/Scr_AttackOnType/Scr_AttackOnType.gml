if (global.typetable[? argument0[? argument1]] == 0) {
	return (100-argument2) / 100 * argument4;
}else if (global.typetable[? argument0[? argument1]] == 2) {
	return (100+argument3) / 100 * argument4;
}
return argument4;
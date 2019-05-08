var type1 = Scr_TypeId(argument0);
var type2 = Scr_TypeId(argument1);
if (global.typetable[type1, type2] == 0) {
	return (100-argument2) / 100 * argument4;
}else if (global.typetable[type1, type2] == 2) {
	return (100+argument3) / 100 * argument4;
}
return argument4;
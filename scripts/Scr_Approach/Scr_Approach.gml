var n = argument0;
if (n > argument2) {
	n -= argument1;
	if (n < argument2) return argument2;
	
}else if (n < argument2) {
	n += argument1;
	if (n > argument2) return argument2;
}
return n;
var probability = 100 / array_length_1d(argument0);
for (var i = 0; i < array_length_1d(argument0); i++) {
	var rand = random(100);
	if (rand < probability) return argument0[i];
}
return argument0[array_length_1d(argument0) - 1];
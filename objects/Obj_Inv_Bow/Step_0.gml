if (cooldownPhase) {
	if (frame < cooldown * 60) frame++;
	else { 
		frame = 0; 
		cooldownPhase = false; 
	}
}

if (rayTouched != noone) {
	var damage = Scr_AttackOnType(type, rayTouched.type, rayTouched.resistance, rayTouched.weakness, attack) - rayTouched.defense;
	rayTouched.hp = Scr_Clamp(rayTouched.hp - damage, 0, rayTouched.maxHp);
	rayTouched = noone;
}
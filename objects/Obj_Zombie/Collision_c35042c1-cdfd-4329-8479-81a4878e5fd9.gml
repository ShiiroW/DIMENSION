if (!other.invincibilityPhase && hp > 0) {
	Scr_Damage(damage);
	other.invincibilityPhase = true;
}
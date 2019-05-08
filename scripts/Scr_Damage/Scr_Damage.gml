Scr_SetHp(global.hp - argument0 * global.damageMultiplier);
var inst = instance_create_depth(Obj_Player.x + (Obj_Player.sprite_width * Obj_Player.image_xscale / 2) - 40, Obj_Player.y, Obj_Player.depth - 10, Obj_NotifHeal)
inst.amount = -argument0 * global.damageMultiplier;
inst.distance = 40;
other.invincibilityPhase = true;
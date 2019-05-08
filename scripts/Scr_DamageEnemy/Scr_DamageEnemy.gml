// DamageEnemy(id, cause, amount)
argument0.hp = Scr_Clamp(argument0.hp - amount, 0, argument0.maxHp);
var blood = instance_create_depth(argument0.x, argument0.y, argument0.depth - 10, Obj_BloodSplash);
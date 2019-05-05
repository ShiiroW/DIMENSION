var screenCenterX = 1024 / 2;
var screenCenterY = 768 / 2;

if (argument1 == "x") return screenCenterX - argument0 / 2;
if (argument1 == "y") return screenCenterY - argument0 / 2;
return argument0;
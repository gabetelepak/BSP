//checks if the given cords and size would overlap an existing module


var ireturn = false;
var i13 = 0;
repeat(max_modules){
if (argument0+argument2) >= module_x[i13] && 
argument0 <= (module_x[i13]+module_size[i13]) &&
(argument1+argument2) >= module_y[i13] && 
argument1 <= (module_y[i13]+module_size[i13]){
ireturn = true;}
i13+=1;}

if argument0 = 0{itreturn = true;}

return ireturn;
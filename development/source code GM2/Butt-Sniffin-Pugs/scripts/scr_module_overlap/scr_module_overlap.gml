//checks if the given cords and size would overlap an existing module

//if overlapping any other module
var ireturn = false;
var i13 = 0;
repeat(max_modules){
if (argument0+argument2) >= module_x[i13] && 
argument0 <= (module_x[i13]+module_size[i13]) &&
(argument1+argument2) >= module_y[i13] && 
argument1 <= (module_y[i13]+module_size[i13]){
ireturn = true;}
i13+=1;}


//if collision_rectangle(argument0,argument1,argument0+argument2,argument1+argument2,obj_basic_wall,false,true) != noone{
//itreturn = true;}

var inst;
inst = collision_rectangle(argument0,argument1,argument0+argument2,argument1+argument2,obj_basic_wall,false,true);
if inst != noone
   {
   return true;
   }

//if overlapping walls
/*
g.tx = argument0;
g.tw = argument2;
g.ty = argument1;
g.th = argument2;
g.r = false;
with obj_basic_wall{
if (g.tx+g.tw) >= x-48 && 
g.tx <= x+48 &&
(g.ty+g.th) >= y-48 && 
g.ty <= y+48{
g.r = true;}}
*/





if argument0 = 0{itreturn = true;}

return ireturn;
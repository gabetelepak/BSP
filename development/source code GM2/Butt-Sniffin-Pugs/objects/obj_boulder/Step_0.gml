/// @description Insert description here
// You can write your code in this editor

event_inherited(); 

//slows
if speed > 0{
speed = lerp(speed,0,.1);}

//collide
if !place_free(x+lengthdir_x(speed+1,direction),y){
hspeed = -hspeed;speed = speed*.25;}
if !place_free(x,y+lengthdir_y(speed+1,direction)){
vspeed = -vspeed;speed = speed*.25;}

if speed > 1 && dust_alarm <= 0{
dust_alarm = 15+irandom(15);
instance_create_depth(origin_x,origin_y+4,depth-2,obj_step_dust);}


if dust_alarm > 0{dust_alarm -= 1;}
/// @description Insert description here
// You can write your code in this editor

event_inherited(); 

//changes from spawn animation
if floor(image_index) = image_number-1 && sprite_index != spr_poop{
sprite_index = spr_poop;
image_index = 0;}

//resets after jiggle
if floor(image_index) = image_number-1 && sprite_index = spr_poop && image_speed > 0{
image_speed = .1;
if speed > 1 && dust_alarm <= 0{
dust_alarm = 15+irandom(15);
instance_create_depth(origin_x,origin_y+2,depth-2,obj_step_dust);}
}

if dust_alarm > 0{dust_alarm -= 1;}

//slows
if speed > 0{
speed = lerp(speed,0,.1);}

//collide
if !place_free(x+lengthdir_x(speed+1,direction),y){
hspeed = -hspeed;speed = speed*.25;}
if !place_free(x,y+lengthdir_y(speed+1,direction)){
vspeed = -vspeed;speed = speed*.25;}


//explode and die
if explode = 1{
explode = 2;
sprite_index = spr_poop_explode;
image_index = 0;
image_speed = .35;}

if explode >= 2{
if ceil(image_index) >= image_number-3{alpha = lerp(alpha,.1,.15);}

//move boulder
if ceil(image_index) >= image_number-3 && explode = 2{
explode = 3;
with obj_boulder{
if distance_to_object(other.id) <= 8{
direction = (floor(point_direction(other.origin_x,other.origin_y-2,origin_x,origin_y-6)/90))*90;
speed = 3;}}}

if ceil(image_index) = image_number-1{
instance_create_depth(origin_x,origin_y-2,depth-2,obj_step_dust);
instance_destroy();}}
////////////////

snapped_x = floor(x/12)*12;
snapped_y = floor(x/12)*12;
ldirection = direction;


if action = 0{
if g.lsh[player_num] != 0 || g.lsv[player_num] != 0{
direction = point_direction(0,0, g.lsh[player_num],g.lsv[player_num]);
draw_direction = direction;
spd = lerp(spd,max_speed,.25);
}}

//dont move if performing an action, or inventory open
if action > 0 || g.inventory_open > 0 || g.paused{spd = 0;}


//slow to a stop.
if g.lsh[player_num] == 0 && g.lsv[player_num] == 0{
spd = lerp(spd,0,.25);
}

//collide
//if !place_free(x+lengthdir_x(max_speed,direction),y){hspeed = 0;}
//if !place_free(x,y+lengthdir_y(max_speed,direction)){vspeed = 0;}

hsp = lengthdir_x(spd,direction);
vsp = lengthdir_y(spd,direction);

if !place_free(x+hsp,y){
while(place_free(x+sign(hsp),y)){
x += sign(hsp);}
hsp = 0;}

if !place_free(x,y+vsp){
while(place_free(x,y+sign(vsp))){
y += sign(vsp);}
vsp = 0;}

x += hsp;
y += vsp;


if keyboard_check(vk_space){
max_speed = max_run_speed;}
else{
max_speed = max_walk_speed;}


//make dust
if speed > max_walk_speed{
dust_alarm -= 1;
if dust_alarm <= 0{
dust_alarm = 22;
instance_create_depth(x-lengthdir_x(6,direction),y+min(0,lengthdir_y(8,direction+180)),depth,obj_step_dust);}

if direction != ldirection{
instance_create_depth(x-lengthdir_x(6,direction),y+min(0,lengthdir_y(8,direction+180)),depth,obj_step_dust);
dust_alarm = 22;}

}


if spd = 0{x = floor(x);y = floor(y);}




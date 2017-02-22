
snapped_x = floor(x/12)*12;
snapped_y = floor(x/12)*12;



if g.lsh[player_num] != 0 || g.lsv[player_num] != 0{
speed = lerp(speed,max_speed,.25);
direction = point_direction(0,0, g.lsh[player_num],g.lsv[player_num]);}



if g.lsh[player_num] == 0 && g.lsv[player_num] == 0{
speed = lerp(speed,0,.25);
}


if !place_free(x+hspeed,y){hspeed = 0;}
if !place_free(x,y+vspeed){vspeed = 0;}


if keyboard_check(vk_space){
max_speed = max_run_speed;}
else{
max_speed = max_walk_speed;}
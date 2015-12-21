goal_x = x;
goal_y = y;

if speed > move_speed/4{speed -= move_speed/4;}else{speed = 0;}

if g.button[player_number,g.button_UP]{goal_y = y-1;sprite_index = spr_walk_up;}
if g.button[player_number,g.button_DOWN]{goal_y = y+1;sprite_index = spr_walk_down;}
if g.button[player_number,g.button_LEFT]{goal_x = x-1;sprite_index = spr_walk;}
if g.button[player_number,g.button_RIGHT]{goal_x = x+1;sprite_index = spr_walk;}

if (goal_x > view_xview[0]+view_wview[0]-24 && goal_x > x) || (goal_x < view_xview[0]+24 && goal_x < x){goal_x = x;}
if (goal_y > view_yview[0]+view_hview[0]-24 && goal_y > y) || (goal_y < view_yview[0]+24 && goal_y < y){goal_y = y;}

//move
if goal_x != x || goal_y != y{
direction = point_direction(x,y,goal_x,goal_y);

if place_free(x+lengthdir_x(move_speed,direction),y+lengthdir_y(move_speed,direction)){
speed = move_speed;}
else{

if place_free(x+lengthdir_x(move_speed,direction),y){
hspeed = lengthdir_x(move_speed,direction);}else{hspeed = 0;}

if place_free(x,y+lengthdir_y(move_speed,direction)){
vspeed = lengthdir_y(move_speed,direction);}else{vspeed = 0;}


}

}

if magic_mode = 0{
if speed > 0{
image_speed = speed/3;}
else{sprite_index = spr_sit;
image_speed = 0;}}

if direction < 90 || direction > 270{face = -1;}
if direction > 90 && direction < 270{face = 1;}







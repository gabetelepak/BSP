   /// @description Insert description here
// Y ou can write your code in this editor

origin_x = x + origin_offset_x;
origin_y = y + origin_offset_y;
depth = room_height-floor(origin_y);

nplayer = instance_nearest(x,y,obj_player);
if instance_exists(nplayer){
pnum = nplayer.player_num;}

/*
if device_mouse_check_button(0,mb_left){
x = mouse_x;
y = mouse_y;}
*/



if is_creature = 1{
scr_handle_creature_sprites();}


//handle action
if action > 0{
action -= 1;
if action < 0{action = 0;}}

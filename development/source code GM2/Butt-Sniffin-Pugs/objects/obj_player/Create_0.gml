/// @description Insert description here
// You can write your code in this editor
event_inherited();
origin_offset_y = -4;


i = 0;
repeat(instance_number(obj_player)){
if id = instance_find(obj_player, i){
player_num = i+1;
g.player_object[player_num] = id;}
i+=1;}
 

scr_define_player_sprites();
scr_define_player_movement();

/// @description Insert description here
// You can write your code in this editor
event_inherited();
origin_offset_y = 0;


i = 0;
repeat(instance_number(obj_player)){
if id = instance_find(obj_player, i){
player_num = i+1;
g.player_object[player_num] = id;}
i+=1;}
 

scr_define_player_sprites();
scr_define_player_movement();


abi_left = "dig";
abi_right = "poop";
scr_define_player_abi();

interaction_target = 0;

test = 0;





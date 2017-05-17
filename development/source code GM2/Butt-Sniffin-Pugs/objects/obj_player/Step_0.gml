 /// @description Insert description here
// You can write your code in this editor
event_inherited();  

//player controlled movement
scr_player_movement();
scr_player_controls();



if interaction_target > 0{
if !instance_exists(interaction_target){interaction_target = 0;}}
/// @description Insert description here
// You can write your code in this editor
event_inherited();  




scr_npc_basic_movement();

//override movement and face player.
if interaction > 0{
if point_distance(x,y,g.player_object[1].x,g.player_object[1].y) < 48{
move = 0;
direction = point_direction(x,y,g.player_object[1].x,g.player_object[1].y);
show_interaction = 1;}
else{show_interaction = 0;}}


if instance_exists(obj_dialogue){show_interaction = 0;}

if show_interaction > 0{
interaction_alpha = lerp(interaction_alpha,1,1/10);

if g.button_pressed[1,g.button_A]{
//message[0] = "\\0Thanks \\3Diestware! \\0Great \\6Dialogue box \\0tutorial.";
message[0] = "Basic paths? \\3PUGGET ABOUT IT. \\0he he he Central Bark is going to be \\6THICC \\0so we gotta have those procedural paths ya'll.";
//message[1] = "\\0Advanced \\1Dialogue \\1Box";
newChat(message, spr_talk_sammy);}

}else{
interaction_alpha = lerp(interaction_alpha,0,1/10);} 

interaction_alpha = clamp(interaction_alpha,0,1);



  
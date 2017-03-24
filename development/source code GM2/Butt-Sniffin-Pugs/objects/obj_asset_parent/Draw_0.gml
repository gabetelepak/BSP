/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,rot,color,alpha);



if instance_exists(obj_player){
if distance_to_point(obj_player.x,obj_player.y) < 200{
if surface_exists(g.surf_player_silhouette){
surface_set_target(g.surf_player_silhouette);
draw_sprite_ext(sprite_index,image_index,x-obj_player.x+24,y-obj_player.y+48,scale,scale,rot,c_black,.65);
surface_reset_target();}}}


//draw_text(x,y,shadow_sprite);
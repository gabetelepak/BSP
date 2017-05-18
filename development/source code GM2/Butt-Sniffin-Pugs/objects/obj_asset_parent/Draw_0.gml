/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,rot,color,alpha);


i = 1;
repeat(2){
if instance_exists(g.player_object[i]){
if surface_exists(g.surf_player_silhouette[i]){
surface_set_target(g.surf_player_silhouette[i]);
draw_sprite_ext(sprite_index,image_index,x-g.player_object[i].x+24,y-g.player_object[i].y+48,scale,scale,rot,c_black,.65);
surface_reset_target();}}
i+=1;}

//draw _text(x,y,shadow_s    
/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,1*face,1,0,color,alpha);





//draw silhouette
if surface_exists(g.surf_player_silhouette){
surface_set_target(g.surf_player_silhouette);
shader_set(shd_color_white);
draw_sprite_ext(sprite_index,image_index,24,48,1*face,1,0,c_white,1);
shader_reset();
surface_reset_target();}
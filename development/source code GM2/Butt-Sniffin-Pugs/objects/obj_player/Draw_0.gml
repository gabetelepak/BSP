
/// @description Insert description here
// You can write your code in this editor
event_inherited();

//draw silhouette
if surface_exists(g.surf_player_silhouette[player_num]){
surface_set_target(g.surf_player_silhouette[player_num]);
shader_set(shd_color_white);
draw_sprite_ext(sprite_index,image_index,24,48,1*face,1,0,c_white,1);
shader_reset();
surface_reset_target();}


draw_text(x,y-48,test);
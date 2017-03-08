/// @description Insert description here
// You can write your code in this editor
scr_handle_camera();
scr_draw_silhouette();





if keyboard_check(vk_tab){
mp_grid_draw(g.world_grid);}

if surface_exists(g.world_grid_surf){
draw_surface(g.world_grid_surf,0,0);}





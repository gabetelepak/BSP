/// @description Insert description here
// You can write your code in this editor



//temp grass texture
//draw_sprite_tiled_ext(spr_grass_tile,0,0,0,1,1,c_white,1);
//temp grass texture
//draw_sprite_tiled_ext(spr_testing_grid_floor,0,0,0,1,1,c_white,1);

//park paths
if surface_exists(g.world_grid_surf){
draw_surface(g.world_grid_surf,0,0);}


if surface_exists(g.surf_shadow){
draw_surface_ext(g.surf_shadow,floor(g.camera_x) ,floor(g.camera_y),1,1,0,c_black,.15);
surface_set_target(g.surf_shadow);
draw_clear_alpha(c_black,0); 
surface_reset_target();
}


//scr_draw_mod_gen();
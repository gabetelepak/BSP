/// @description Insert description here
// You can write your code in this editor

scr_step_silhouette();

if generate_world_path = 1{
buffer_set_surface(world_grid_buffer,world_grid_surf,0,0,0);}


if !surface_exists(world_grid_surf){
world_grid_surf = surface_create(4320,3120);
buffer_set_surface(world_grid_buffer,world_grid_surf,0,0,0);
}
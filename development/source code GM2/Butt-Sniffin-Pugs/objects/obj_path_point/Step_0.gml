/// @description Insert description here
// You can write your code in this editor

if path_get_length(path) > 48{
if path_position = 0{
path_start(path,2,path_action_stop,1);
path_speed = 2;}}

if path_position > 0{
if surface_exists(g.world_grid_surf){
surface_set_target(g.world_grid_surf);
surface_copy(g.world_grid_surf, 0, 0, g.world_grid_surf);
surface_reset_target();

surface_set_target(g.world_grid_surf);
draw_sprite(sprite_index,0,x,y);
surface_reset_target();}}
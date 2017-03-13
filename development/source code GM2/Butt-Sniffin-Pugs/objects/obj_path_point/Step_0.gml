/// @description Insert description here
// You can write your code in this editor

if path_get_length(path) > 4{
if path_position = 0{
path_start(path,2,path_action_stop,1);
path_speed = 4;} 

/*
if clear_path = 0{
clear_path = 1;
i = 0;
repeat(path_get_number(path)){
g.ix = path_get_x(path,i);
g.iy = path_get_y(path,i);
with obj_asset_parent{
if solid = true{
if distance_to_point(g.ix,g.iy) < 48{instance_destroy();}}}
i+=1;}
}
*/
}


if surface_exists(g.world_grid_surf){
surface_set_target(g.world_grid_surf);
//draw_sprite(sprite_index,0,x,y);

draw_set_color(g.c_dkdirt_path);
draw_circle(x,y,22,0);



surface_reset_target();}





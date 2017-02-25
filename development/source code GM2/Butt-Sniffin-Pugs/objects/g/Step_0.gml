/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_escape){game_end();}

if room = rm_park_test{
if !instance_exists(obj_floor){
instance_create_depth(x,y,10000,obj_floor);}}


scr_handle_controls();
scr_handle_camera();

if keyboard_check_pressed(ord("1")){
scr_generate_biome();
scr_module_populate();}



//game initiation, gather module data
scr_module_get_grid();


    /// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_escape){game_end();}
if keyboard_check(vk_shift) && keyboard_check(vk_enter){game_restart();}

if room = rm_park_test{
if !instance_exists(obj_floor){
instance_create_depth(x,y,10000,obj_floor);}}

if tile_deepen = 1{
if room = rm_center_bottom{tile_deepen = 2;
	// scr_tile_deepen("terrain_tiles",48,48,room_height);
	}}


scr_handle_controls();



if keyboard_check_pressed(ord("1")){
room_speed = 90;
scr_generate_biome();
scr_module_populate();

/*
repeat(30){scr_filler_populate(filler_obj[filler_obj_cur]);}filler_obj_cur+=1;
repeat(30){scr_filler_populate(filler_obj[filler_obj_cur]);}filler_obj_cur+=1;
repeat(30){scr_filler_populate(filler_obj[filler_obj_cur]);}filler_obj_cur+=1;
repeat(30){scr_filler_populate(filler_obj[filler_obj_cur]);}filler_obj_cur+=1;
repeat(20){scr_filler_populate(filler_obj[filler_obj_cur]);}filler_obj_cur+=1;
repeat(20){scr_filler_populate(filler_obj[filler_obj_cur]);}filler_obj_cur+=1;
*/

module_populate_success = 1;}

if module_populate_success = 1 && filler_obj_cur < filler_obj_max+1{



if filler_loop[filler_obj_cur] < 1{

if filler_amount_cur[filler_obj_cur] < filler_amount[filler_obj_cur]{
scr_filler_populate(filler_obj[filler_obj_cur]);
filler_amount_cur[filler_obj_cur]+=1;}
else{
filler_loop[filler_obj_cur]+=1;}}else{
filler_obj_cur += 1;}
}


if module_populate_success = 1 && filler_obj_cur >= filler_obj_max+1{
if instance_exists(obj_basic_wall){
with obj_basic_wall{instance_destroy();}}
room_speed = 30;

}


scr_handle_world_path();



/* 
generate_world_path = 0;
if instance_exists(obj_path_point){
with obj_path_point{
if path_speed > 0{g.generate_world_path = 1;}}}
*/




//game initiation, gather module data
scr_module_get_grid();



//inventory
if g.button_pressed[1,g.button_start]{
if inventory_open = 0{inventory_open = 1;}
else{inventory_open = 0;}}



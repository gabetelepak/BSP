if room != last_room{
if instance_exists(obj_player){
with obj_player{
g.pug_id[player_number] = id;}}
start_room += 1;}

last_room = room;

scr_step_controls(0);
scr_step_controls(1);

if manymouse_active = 1{
scr_handle_manymouse();
scr_manymouse_controls(0);
scr_manymouse_controls(1);}



if game_phase = 'start menu' || game_phase = 'char select'{
scr_step_title_screen();}

if game_phase = 'char select'{
if room_phase = -1 && room = rm_park_night{
scr_define_character_select();}

if room_phase = 0{
scr_step_character_select();}
}

if game_phase = 'tuorial'{
scr_step_chartut();}

if game_phase = 'treehouse'{
scr_step_treehouse();}


//if room = rm_tutorial{
//scr_step_tutorial();}

if game_phase = 'park night'{
//if lroom != room{scr_init_park_night();}
scr_step_park_night();}



//misc minor systems
scr_step_misc_systems();





//last
lroom = room;
scr_step_debug();

if keyboard_check(vk_escape){
game_end();}

if keyboard_check_pressed(ord('R')){
game_restart();}

//switch full screen
if keyboard_check_pressed(vk_f10){
//
if surface_exists(g.surf_shadow){surface_free(g.surf_shadow);}
if window_get_fullscreen() = true{window_set_fullscreen(false);}
else{window_set_fullscreen(true);}}



/*
if mouse_check_button_pressed(mb_right){
i = instance_position(mouse_x,mouse_y,obj_bigfountain);
if instance_exists(i){
with i{scr_obj_full_sparkle();}}}
*/

g.vx = view_xview[0];
g.vy = view_yview[0];








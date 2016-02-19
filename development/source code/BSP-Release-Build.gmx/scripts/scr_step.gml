

scr_step_controls(0);
scr_step_controls(1);

if manymouse_active = 1{
scr_handle_manymouse();
scr_manymouse_controls(0);
scr_manymouse_controls(1);}



if room = rm_title_screen || room = rm_character_select{
scr_step_title_screen();}

if room = rm_character_select{
scr_step_character_select();}

if room = rm_park_night{
if lroom != room{scr_init_park_night();}
scr_step_park_night();}



//misc minor systems
scr_step_misc_systems();





//last
lroom = room;
scr_step_debug();

if keyboard_check(vk_escape){
game_end();}

//switch full screen
if keyboard_check_pressed(vk_f10){
if surface_exists(g.surf_shadow){surface_free(g.surf_shadow);}
if window_get_fullscreen() = true{window_set_fullscreen(false);}
else{window_set_fullscreen(true);}}

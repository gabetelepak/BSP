if room = rm_title_screen || room = rm_character_select{
scr_draw_title_screen();}

if room = rm_character_select{
scr_draw_character_select();}

if room = rm_park_night{
scr_draw_park_night();}


if keyboard_check(vk_enter){
draw_set_alpha(.25);
mp_grid_draw(mpgrid);
draw_set_alpha(1);}



draw_text(20,20,array_length_1d(arrayname));





//draw debug test
//scr_draw_debug();

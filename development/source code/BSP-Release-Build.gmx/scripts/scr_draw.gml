if game_phase = 'start menu' || game_phase = 'char select'{
scr_draw_title_screen();}

if game_phase = 'char select'{
if room_phase = 0{
scr_draw_character_select();}
if room_phase = 1{
scr_draw_chartut();}}

if game_phase = 'tutorial'{
scr_draw_chartut();}

//if room = rm_tutorial{
//scr_draw_tutorial();}

if game_phase = 'park night'{
scr_draw_park_night();}


if screen_flash = 1{
screen_flash = 17;}
if screen_flash > 0{
screen_flash -= 1;
draw_set_alpha((1/15)*screen_flash);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);
if screen_flash = 1{screen_flash = 0;}}




//draw_text(20,20,string(id));

//draw_set_halign(fa_left);
//draw_text(vx+20,vy+20,string(g.dxpos[0])+" x "+string(g.dypos[0]));
//draw_text(vx+20,vy+50,string(g.dxpos[1])+" x "+string(g.dypos[1]));

/*
if keyboard_check(vk_enter){
draw_set_alpha(.25);
mp_grid_draw(mpgrid);
draw_set_alpha(1);}
*/








//draw debug test
//scr_draw_debug();

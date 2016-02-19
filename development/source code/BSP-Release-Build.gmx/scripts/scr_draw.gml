if room = rm_title_screen || room = rm_character_select{
scr_draw_title_screen();}

if room = rm_character_select{
scr_draw_character_select();}

if room = rm_park_night{
scr_draw_park_night();}

//draw_text(20,20,string(id));

//draw_set_halign(fa_left);
//draw_text(vx+20,vy+20,string(g.dxpos[0])+" x "+string(g.dypos[0]));
//draw_text(vx+20,vy+50,string(g.dxpos[1])+" x "+string(g.dypos[1]));

/*
if keyboard_check(vk_enter){
draw_set_alpha(.25);
mp_grid_draw(mpgrid);
draw_set_alpha(1);}









//draw debug test
//scr_draw_debug();

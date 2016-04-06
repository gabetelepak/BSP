scr_handle_park_ui();


if tutorial_step = 0{

//advance tut
if g.tut_confirm[0] = 1 ||
g.tut_confirm[1] = 1{
g.tut_confirm[0] = 0;
g.tut_confirm[1] = 0;
tutorial_step = .5;
scr_sound(snd_get,g.sfx_volume);
instance_create(360,240,obj_tut_status);
obj_tut_panel_top.death = 1;
obj_tut_panel_bottom.death = 1;

}

//check for bark only.
with obj_player{
if sprite_index = spr_bark && pug_action = 1{
g.tut_confirm[player_number] = 1;}
}}////////////


//step 2
if tutorial_step = 1{

//advance tut
if g.tut_confirm[0] = 1 ||
g.tut_confirm[1] = 1{
g.tut_confirm[0] = 0;
g.tut_confirm[1] = 0;
tutorial_step = 1.5;
scr_sound(snd_get,g.sfx_volume);
opt = instance_create(x-360,y+240,obj_tut_status);
opt.step = 1;
obj_tut_panel_top.death = 1;
obj_tut_panel_bottom.death = 1;

}}

//step 3
//step 2
if tutorial_step = 2{

//advance tut
if g.tut_confirm[0] = 1 ||
g.tut_confirm[1] = 1{
g.tut_confirm[0] = 0;
g.tut_confirm[1] = 0;
tutorial_step = 2.5;
scr_sound(snd_get,g.sfx_volume);
opt = instance_create(x-360,y+240,obj_tut_status);
opt.step = 2;
obj_tut_panel_top.death = 1;
obj_tut_panel_bottom.death = 1;

}}

if tutorial_step = 3{
park_night_intro = 1;
room_goto(rm_park_night);}








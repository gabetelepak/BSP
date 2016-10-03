if audio_is_playing(snd_title_music){
audio_stop_sound(snd_title_music);}



if park_night_intro = 0{
scr_handle_park_ui();}

scr_park_night_camera();

if park_night_intro > 0{
if park_night_intro = 1{park_night_intro = 120;
screen_flash = 1;}
park_night_intro -= clamp(park_night_intro*.03,.5,1.5);
if park_night_intro <= 2{
park_night_intro = 0;}

vy = floor(g.pug_cam_y - 2 + park_night_intro);
view_yview[0] = vy;
view_xview[0] = g.pug_cam_x;}


if park_night_intro <= 0 && moose_init_message > 0{
moose_init_message -= 1;}

if moose_init_message = 1{

//scr_moose_talk(spr_moose_talk_mad,"OMG WHY ARE BILLY & CLINT OUT OF WATER - Hurry! Kill those ants 
//and get those Axolotls to the pond!");

scr_moose_talk(spr_moose_talk_mad,"OMG WHY ARE THOSE AXOLOTLS
ON LAND - Hurry! Kill those ants
and get those Axolotls to the pond!");

}


//music crossfade
background_music1 = snd_night_music;
background_music2 = snd_lake_music;
if g.pug_cam_x+(vw/2) >= 540{
scr_crossfade(background_music2,background_music1);}
else{
scr_crossfade(background_music1,background_music2);}



if keyboard_check_pressed(ord('0')){
room_goto(rm_treehouse);
screen_flash = 1;
game_phase='treehouse';
g.park_night_intro = 0;
}

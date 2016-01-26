if audio_is_playing(snd_title_music){
audio_stop_sound(snd_title_music);}

if !audio_is_playing(background_music1){
audio_sound_gain(background_music1, g.music_volume, 0);
audio_play_sound(background_music1, 1, 1);}



scr_park_night_camera();

if park_night_intro > 0{
if park_night_intro = 1{park_night_intro = 120;}
park_night_intro -= 1;
if park_night_intro = 2{

g.spr_left_ui[0] = spr_ui_bark;
g.spr_right_ui[0] = spr_ui_pee;
g.last_ui[0] = 999;
ui_scale[0] = 1.4;
g.spr_left_ui[1] = spr_ui_bark;
g.spr_right_ui[1] = spr_ui_pee;
g.last_ui[1] = 999;
ui_scale[1] = 1.4;

park_night_intro = 0;}
}

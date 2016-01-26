//handle splash screen
if title_splash_alarm > 0{
title_splash_alarm -= 1;
if title_splash_alarm <= 30{
splash_alpha = max(0,title_splash_alarm/30);

if !audio_is_playing(snd_title_music){
audio_sound_gain(snd_title_music, g.music_volume, 0);
audio_play_sound(snd_title_music, 1, 1);}

//press A to skip splash screen
}else{
if button[0,button_A] || button[1,button_A]{
title_splash_alarm = 29;}}}


//allow start menu after splash screen
if title_splash_alarm <= 0 && room = rm_title_screen{
if button[0,button_A] || button[1,button_A]{
scr_define_character_select();
room_goto(rm_character_select);}}


if room = rm_character_select{
title_logo_alarm -=1;
logo_alpha = max(0,title_logo_alarm/30);}

/*
if title_splash_alarm = 115{
if window_get_fullscreen() = 0{
window_set_fullscreen(1);}}
*/

//handle splash screen
if title_splash_alarm > 0{
title_splash_alarm -= 1;
if title_splash_alarm <= 30{
splash_alpha = max(0,title_splash_alarm/30);

scr_music(snd_title_music);

//press A to skip splash screen
}else{
if button[0,button_A] || button[1,button_A]{
title_splash_alarm = 29;}}}


//allow start menu after splash screen
if title_splash_alarm <= 0 && room = rm_title_screen{
if button[0,button_A] || button[1,button_A]{
room_goto(rm_park_night);
game_phase = 'char select';
room_phase = -1;}}

if title_logo_alarm > 0{
if game_phase = 'char select'{
title_logo_alarm -=1;
logo_alpha = max(0,title_logo_alarm/30);}}

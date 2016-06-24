//sound id
if audio_exists(music_playing){
if audio_is_playing(music_playing) && music_playing != argument0{
audio_stop_sound(music_playing);}}

if argument0 != 0 && music_playing != argument0{
audio_sound_gain(argument0, 1*g.music_volume, 0);
audio_play_sound(argument0, 1, 1);}

music_playing = argument0;



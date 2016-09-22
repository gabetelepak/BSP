//arg0 = from, arg1 = to


if !audio_is_playing(argument0){
audio_play_sound(argument0, 1, 1);}
if !audio_is_playing(argument1){
audio_play_sound(argument1, 1, 1);}

var i13 = audio_sound_get_gain(argument1);
if i13 < music_volume{
audio_sound_gain(argument1, i13 + .002, 0);}
if i13 >= music_volume{
audio_sound_gain(argument1, music_volume, 0);}

i13 = audio_sound_get_gain(argument0);
if i13 > 0{
audio_sound_gain(argument0, i13 - .002, 0);}
if i13 <= 0{
audio_sound_gain(argument0, 0, 0);}

/*



*/

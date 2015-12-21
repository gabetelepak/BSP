//arg0 = from, arg1 = to

var i13 = audio_sound_get_gain(argument1);
if i13 < music_volume{
audio_sound_gain(argument1, i13 + .002, 0);}
if i13 > music_volume{
audio_sound_gain(argument1, music_volume, 0);}

var i13 = audio_sound_get_gain(argument0);
if i13 > 0{
audio_sound_gain(argument0, i13 - .002, 0);}
if i13 < 0{
audio_sound_gain(argument0, 0, 0);}

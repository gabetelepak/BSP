//sound id, volume
if audio_exists(argument0){
if !audio_is_playing(argument0){
audio_sound_gain(argument0, argument1, 0);
audio_play_sound(argument0, 1, false);
}
}

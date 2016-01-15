//sound id, volume

var soundi = 1;
if instance_exists(g){
if id != g{
if x < view_xview[0]{soundi = 0;}
if x > view_xview[0]+view_wview[0]{soundi = 0;}
if y < view_yview[0]{soundi = 0;}
if y > view_yview[0]+view_hview[0]{soundi = 0;}}}

if audio_exists(argument0){
if !audio_is_playing(argument0){
audio_sound_gain(argument0, argument1*soundi, 0);
audio_play_sound(argument0, 1, false);
}
}

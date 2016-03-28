if audio_is_playing(snd_title_music){
audio_stop_sound(snd_title_music);}

if !audio_is_playing(background_music1){
audio_sound_gain(background_music1, g.music_volume, 0);
audio_play_sound(background_music1, 1, 1);}


scr_handle_park_ui();
scr_park_night_camera();

if park_night_intro > 0{
if park_night_intro = 1{park_night_intro = 120;}
park_night_intro -= 1;
if park_night_intro = 2{
park_night_intro = 0;}
}


scr_init_park_ui();
scr_define_talkingheads();

//first thing when entering the park
mpgrid = mp_grid_create(-3,-3,ceil(room_width/6)+1,ceil(room_height/6)+1,6,6);

with obj_scenery_static_parent{
if solid == true{
mp_grid_add_instances(g.mpgrid,id,1);}}



//determine player total
player_total = 0;
with obj_player{
g.player_total += 1;}

//cam shake
shake = 0;
shakex = 0;
shakey = 0;

//game reset timer, for demos
reset_time = 30*60*3;//6min
idle_time = 0;
finished_time = 0;

//initial moose message
moose_init_message = 30*5;

/*
if !audio_is_playing(background_music1){
audio_sound_gain(background_music1, g.music_volume, 0);
audio_play_sound(background_music1, 1, 1);}*/

//scr_crossfade(background_music2,background_music1);

background_music1 = snd_night_music;
background_music2 = snd_lake_music;

audio_stop_sound(background_music1);
audio_sound_gain(background_music1, g.music_volume, 0);
audio_play_sound(background_music1, 1, 1);
audio_stop_sound(background_music2);
audio_sound_gain(background_music2, 0, 0);
audio_play_sound(background_music2, 1, 1);


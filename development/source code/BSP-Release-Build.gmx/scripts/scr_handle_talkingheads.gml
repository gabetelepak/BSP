

if keyboard_check_pressed(vk_numpad3){
talking_head_draw_string = '';
talking_head_step = 0;
talking_head_current_string = "Hi there, my name's Moose!
I'm the main Great Dane here in Central Bark. Although Personally I";

//talking_head_current_string = "Hi I A I A I A I A PersonallyPersonally PersonallyPersonally PersonallyPersonally PersonallyPersonally";

}

//reset draw string if text changes
if ltalking_head_current_string != talking_head_current_string{
talking_head_step = 0;
talking_head_draw_string = '';
ltalking_head_current_string = talking_head_current_string}


//feed text into draw string
if talking_head_draw_string != talking_head_current_string && talking_head_current_string != ''{
talking_head_step += 1;




if talking_head_step >= floor((30*talk_speed)*syllable_factor) &&
(!audio_exists(talk_current_sound) || (audio_exists(talk_current_sound) && !audio_is_playing(talk_current_sound))){
talking_head_step = 0;


istr = string_replace(talking_head_current_string,talking_head_draw_string,"");
i2 = string_pos(" ", istr);
if i2 = 0{talking_head_draw_string = talking_head_current_string}else{
talking_head_draw_string = talking_head_draw_string + string_copy(istr, 1, i2);}


i = clamp(ceil(i2/3),1,3);
syllable_factor = i/2;
i = clamp(i-irandom(1),0,2);

if audio_exists(talk_current_sound){
if audio_is_playing(talk_current_sound){
audio_stop_sound(talk_current_sound);}}
talk_current_sound = talk_sound[i];
scr_sound(talk_current_sound,g.sfx_volume*1.5);

}





}

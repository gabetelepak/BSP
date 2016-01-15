
//init action
if g.button[player_number,g.button_Y]{
if pug_action <= 0{
sprite_index = spr_sniff;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(snd_pug_sniff,1);
if scr_dis(x,y,opug.x,opug.y) < 48{

scr_switch_power();

//start sniff icon timer
sniff_icon_alarm = 0;
scr_sound(snd_hint_appear,g.sfx_volume);


//other pug sniffed
with opug{
if pug_action <= 0 && magic_mode = 0{
face = opug.face;
sprite_index = spr_sniffed;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);}}
}

}}





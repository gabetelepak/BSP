
//init action
if g.button[player_number,g.button_Y]{
if pug_action <= 0{
scoot = 0;
sprite_index = spr_sniff;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(snd_pug_sniff,g.sfx_volume);
if scr_dis(x,y,opug.x,opug.y) < 48{

scr_switch_power();

if opug.x < x{
face = 1;
direction = 180;
opug.face = 1;
opug.direction = 0;}else{
face = -1;
direction = 0;
opug.face = -1;
opug.direction = 180;}

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






//init action
if g.button[player_number,g.button_Y]{
if pug_action <= 0{
sprite_index = spr_sniff;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(snd_pug_sniff,1);
}}


//handle sniff action, half way through animation
if sprite_index = spr_sniff{
if floor(image_index) = ceil(sprite_get_number(sprite_index)/2)
&& pug_action_proc = 0{pug_action_proc = 1;
if scr_dis(x,y,opug.x,opug.y) < 48{
scr_switch_power();}
}}

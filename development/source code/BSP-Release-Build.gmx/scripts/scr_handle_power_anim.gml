
//init action, left
if g.button[player_number,g.button_X]{
if pug_action <= 0{
sprite_index = abi_left_anim;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(abi_left_snd,1);
}}
//right
if g.button[player_number,g.button_B]{
if pug_action <= 0{
sprite_index = abi_right_anim;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(abi_right_snd,1);
}}


if sprite_index = spr_poop{
if pug_action = 10{
instance_create(x+(face*20),y,obj_poop);}}








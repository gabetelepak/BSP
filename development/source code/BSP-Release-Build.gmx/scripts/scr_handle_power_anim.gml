
//init action, left
if g.button[player_number,g.button_LT]{
if pug_action <= 0{
sprite_index = abi_left_anim;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(abi_left_snd,1);
scoot = 0;
}}
//right
if g.button[player_number,g.button_RT]{
if pug_action <= 0{
sprite_index = abi_right_anim;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(abi_right_snd,1);
scoot = 0;
}}


if sprite_index = spr_poop{
if pug_action = 10{
opt = instance_create(x+(face*20),y,obj_poop);
if ate_firefly >= 1{opt.glow = 1;
ate_firefly -= 1;}
}}


//toggle scoot
if sprite_index = spr_scoot{
if image_index mod 2{
opt = instance_create(x+random(6)-3,y+random(6)-3,obj_poop);
opt.oil = 1;
opt.depth += 6;
opt.sprite_index = spr_poop_oil;
opt.alpha = .15;
opt.rot = ceil(random(8))*45;}
if pug_action = 1{
if scoot = 0{scoot = 1;}else{scoot = 0;}}}

//handle unlock item get animation
if spr_unlock > 0{
if unlock_time <= 0{
unlock_time = 60;
opt = instance_create(x,y,obj_unlock);
opt.sprite_index = spr_unlock;
sprite_index = spr_itemget;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(snd_get,g.sfx_volume);
scoot = 0;}else{unlock_time -= 1;

if floor(image_index) = 8{
image_speed = 0;
pug_action = 2;}

}
if unlock_time = 1{
unlock_time = 0;
spr_unlock = 0;
pug_action = 0;}}
//////







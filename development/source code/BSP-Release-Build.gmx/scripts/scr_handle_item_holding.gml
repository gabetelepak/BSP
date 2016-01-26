//reset to blank
spr_item = spr_blank;
if item_held = ""{item_obj = -1;}

//if item held, assign sprites
if item_held != ""{

if sprite_index != abi_left_anim{
spr_item = spr_item_idle;}

if sprite_index = spr_walk_up{
spr_item = spr_item_up;}

if sprite_index = spr_walk_down{
spr_item = spr_item_down;}

if sprite_index = spr_walk{
spr_item = spr_item_walk;}

////////////////////////////////////////

//perform drop action
if item_obj >= 0{

if item_ui = 1{
if sprite_index = spr_spit{
if pug_action = 6 && pug_action_proc = 0{
item_held = "";
pug_power = 0;
scr_switch_power();
pug_action_proc = 1;
opt = instance_create(x-face*6,y+3,item_obj);
opt.direction = direction;

if item_obj = obj_bugnet{
opt.net_firefly = net_firefly;
net_firefly = 0;}
}}}

//non ui item dropping
if item_ui = 0{
if sprite_index = abi_left_anim || sprite_index = abi_right_anim{
if pug_action = sprite_get_number(sprite_index)-1 && pug_action_proc = 0{
item_held = "";
pug_action_proc = 1;
opt = instance_create(x-face*6,y+3,item_obj);
opt.face = face;
opt.direction = direction;
opt.active = 1;
}}}


}//////////////////////////////////



}//end if item held///////////////////////////////

//bubble wand item////////////////////////////////////////////////
if item_held = "Bubble Wand"{
item_ui = 1;
item_obj = obj_bubble_wand;
i = player_number;

spr_item_walk = g.spr_bubble_wand_walk[i];
spr_item_down = g.spr_bubble_wand_down[i];
spr_item_up = g.spr_bubble_wand_up[i];
spr_item_idle = g.spr_bubble_wand_idle[i];


abi_left_anim = g.spr_bubble_wand_use[i];
abi_left_icon = spr_ui_bubble;
abi_left_snd = snd_bubble_wand_swipe;
g.spr_left_ui[player_number] = spr_ui_bubble;


abi_right_anim = spr_spit;
abi_right_icon = spr_ui_exit;
abi_right_snd = snd_blank;
g.spr_right_ui[player_number] = spr_ui_exit;

//perform bubble wand
if sprite_index = g.spr_bubble_wand_use[player_number]{
if pug_action = 1{
opt = instance_create(x-(face*24),y,obj_bubble);
if direction > 90 && direction <= 270{
opt.direction = 180+random(20)-10;}else{opt.direction = 0+random(20)-10;}
opt.speed = 1 + random(1.1);}

if pug_action = 2{
if ceil(random(10)) > 3{
opt = instance_create(x-(face*24),y,obj_bubble);
if direction > 90 && direction <= 270{
opt.direction = 180+random(20)-10;}else{opt.direction = 0+random(20)-10;}
opt.speed = .75 + random(1.1);}}

if pug_action = 3{
if ceil(random(10)) > 5{
opt = instance_create(x-(face*24),y,obj_bubble);
if direction > 90 && direction <= 270{
opt.direction = 180+random(20)-10;}else{opt.direction = 0+random(20)-10;}
opt.speed = .5 + random(1.1);}}


}


}//////////////////////////////////////////////////////////////////

//bugnet item////////////////////////////////////////////////
if item_held = "Bugnet"{
item_ui = 1;
item_obj = obj_bugnet;
i = player_number;

spr_item_walk = g.spr_bugnet_walk[i];
spr_item_down = g.spr_bugnet_down[i];
spr_item_up = g.spr_bugnet_up[i];
spr_item_idle = g.spr_bugnet_idle[i];


abi_left_anim = g.spr_bugnet_use[i];
abi_left_icon = spr_ui_bugnet;
abi_left_snd = snd_bubble_wand_swipe;
g.spr_left_ui[player_number] = spr_ui_bugnet;


abi_right_anim = spr_spit;
abi_right_icon = spr_ui_exit;
abi_right_snd = snd_blank;
g.spr_right_ui[player_number] = spr_ui_exit;

//perform bubble wand
if sprite_index = g.spr_bugnet_use[player_number]{
if pug_action = 1{
}}


}////////////////////////////////////////////////////////


//frisbee item////////////////////////////////////////////////
if item_held = "Frisbee"{
item_ui = 0;
item_obj = obj_frisbee;
i = player_number;

spr_item_walk = g.spr_frisbee_walk[i]
spr_item_down = g.spr_frisbee_down[i];
spr_item_up = g.spr_frisbee_up[i];
spr_item_idle = g.spr_frisbee_idle[i];


//abi_left_anim = spr_blank;
//abi_left_icon = spr_blank;
//abi_left_snd = snd_blank;

//abi_right_anim = spr_spit;
//abi_right_icon = spr_blank;
//abi_right_snd = snd_blank;
}////////////////////////////////////////////////////////


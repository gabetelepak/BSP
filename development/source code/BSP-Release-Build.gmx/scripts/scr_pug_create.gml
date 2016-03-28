rot = 0;
color = c_white;
alpha = 1;
move_speed = 2.5;
face = 1;
spr_shadow = spr_pug_shadow2;
shadow_scalex = 1;
shadow_scaley = 1;
scoot = 0;
slide = 0;
ate_firefly = 0;
net_firefly = 0;
show_catch = 0;

goal_x = x;
goal_y = y;

z = 0;
zgrav = .05;
zbounce = 0;
zspeed = 0;
zbouncable = 1;
hurt = 0;

//determine player number
var i;
for (i = 0; i < instance_number(obj_player); i += 1)
   {
if id = instance_find(obj_player,i){
g.pug_id[i] = id;
 player_number = i;}
else{opug = instance_find(obj_player,i);}

   }
   
   

   
   

//assign sprites based on player
//i = player_number;
i = g.selected_char[player_number];
if i < 0{i = player_number;}
spr_sit = g.spr_sit[i];
spr_walk = g.spr_walk[i];
spr_sit_bite = g.spr_sit_bite[i];
spr_walk_bite = g.spr_walk_bite[i];
spr_sniff = g.spr_sniff[i];
spr_bite = g.spr_bite[i];
spr_bite_low = g.spr_bite_low[i];
spr_spit = g.spr_spit[i];
spr_pee = g.spr_pee[i];;
spr_poop = g.spr_poop[i];
spr_bark = g.spr_bark[i];
spr_stung = g.spr_stung[i];
spr_sniffed = g.spr_sniffed[i];
spr_walk_down = g.spr_walk_down[i];
spr_walk_up = g.spr_walk_up[i];
spr_sick = g.spr_sick[i];
spr_walk_down_bite = g.spr_walk_down_bite[i];

//spr_poop_attack = g.spr_poop_attack[i];
spr_scoot = g.spr_scoot[i];

spr_transform = g.spr_transform[i];
spr_hover = g.spr_hover[i];
spr_itemget = g.spr_itemget[i];
spr_pugslide = g.spr_pugslide[i];

if spr_transform = spr_sammie_transform || spr_transform = spr_bella_transform{
spr_bubble_wand_use = spr_sammie_bubble_wand_use;
spr_bugnet_use = spr_sammie_bugnet_use;}
else{
spr_bubble_wand_use = spr_alice_bubble_wand_use;
spr_bugnet_use = spr_alice_bugnet_use;}



sprite_index = spr_sit;

//misc stuff

sniff_icon_alarm_max = 60;//how long to show sniff icons
sniff_icon_alarm = sniff_icon_alarm_max;

//must be defined after sprites
scr_init_pug_powers();
scr_init_magic_mode();
scr_init_item_holding();
scr_switch_power();



i = pug_power;
abi_left_anim = pug_power_anim[i]
abi_left_icon = pug_power_icon[i];
abi_left_snd = pug_power_snd[i];
g.spr_left_ui[player_number] = pug_power_ui_icon[i];

i = pug_power+1;
abi_right_anim = pug_power_anim[i]
abi_right_icon = pug_power_icon[i];
abi_right_snd = pug_power_snd[i]
g.spr_right_ui[player_number] = pug_power_ui_icon[i];

//set initial ui icons(so they show up)


g.spr_left_ui[0] = spr_ui_bark;
g.spr_right_ui[0] = spr_ui_pee;
g.spr_left_ui[1] = spr_ui_bark;
g.spr_right_ui[1] = spr_ui_pee;


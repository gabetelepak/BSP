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
pause = 0;//pugs cannot be controlled.
invisible = 0;//visible doesnt really work, fixes it.

spawn_x = x;
spawn_y = y;

goal_x = x;
goal_y = y;

z = 0;
zgrav = .05;
zbounce = 0;
zspeed = 0;
zbouncable = 1;
hurt = 0;
unlock_butt_drag = 0;


//determine player number

var i;
for (i = 0; i < instance_number(obj_player); i += 1)
   {
if id = instance_find(obj_player,i){
g.pug_id[i] = id;
g.pug_score[i] = 0;
 player_number = i;}
else{opug = instance_find(obj_player,i);}

   }

   
scr_pug_assign_sprites();

   
   



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
//g.spr_left_ui[0] = spr_ui_scoot;
//g.spr_right_ui[0] = spr_ui_poop;
//g.spr_left_ui[1] = spr_ui_scoot;
//g.spr_right_ui[1] = spr_ui_poop;

//treehouse stuff
treehouse_floor = 1;
jump_up_ladder = 0;
jump = 0;

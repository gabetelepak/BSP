rot = 0;
color = c_white;
alpha = 1;
move_speed = 2;
face = 1;

goal_x = x;
goal_y = y;

//determine player number
var i;
for (i = 0; i < instance_number(obj_player); i += 1)
   {
if id = instance_find(obj_player,i){
 player_number = i;}
else{opug = instance_find(obj_player,i);}

   }

//assign sprites based on player
i = player_number;
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

spr_poop_attack = g.spr_poop_attack[i];
spr_scoot = g.spr_scoot[i];

spr_transform = g.spr_transform[i];
spr_hover = g.spr_hover[i];

sprite_index = spr_sit;


//must be defined after sprites
scr_init_pug_powers();
scr_init_magic_mode();
scr_switch_power();

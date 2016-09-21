//assign sprites based on player
//i = player_number;
i = g.selected_char[player_number];
if i < 0{i = player_number+2;}
//i = player_number+2;
spr_sit = g.spr_sit[i];
spr_walk = g.spr_walk[i];
spr_sit_bite = g.spr_sit_bite[i];
spr_walk_bite = g.spr_walk_bite[i];
spr_sniff = g.spr_sniff[i];
spr_bite = g.spr_bite[i];
spr_bite_low = g.spr_bite_low[i];
spr_spit = g.spr_spit[i];
spr_pee = g.spr_pee[i];
spr_poop = g.spr_poop[i];
spr_bark = g.spr_bark[i];
spr_stung = g.spr_stung[i];
spr_sniffed = g.spr_sniffed[i];
spr_walk_down = g.spr_walk_down[i];
spr_walk_up = g.spr_walk_up[i];
spr_sick = g.spr_sick[i];
spr_walk_down_bite = g.spr_walk_down_bite[i];
spr_jump =  g.spr_jump[i];
spr_good =  g.spr_good[i];
spr_dig = g.spr_dig[i];

//spr_poop_attack = g.spr_poop_attack[i];
spr_scoot = g.spr_scoot[i];

spr_transform = g.spr_transform[i];
spr_hover = g.spr_hover[i];
spr_itemget = g.spr_itemget[i];
spr_pugslide = g.spr_pugslide[i];

/*
if spr_transform = spr_sammie_transform || spr_transform = spr_bella_transform{
spr_bubble_wand_use = spr_sammie_bubble_wand_use;
spr_bugnet_use = spr_sammie_bugnet_use;}
else{
spr_bubble_wand_use = spr_alice_bubble_wand_use;
spr_bugnet_use = spr_alice_bugnet_use;}
*/

spr_bubble_wand_use = g.spr_bubble_wand_use[i];
spr_bugnet_use = g.spr_bugnet_use[i];


sprite_index = spr_sit;

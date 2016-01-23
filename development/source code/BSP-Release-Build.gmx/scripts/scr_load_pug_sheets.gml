//create the pug sprites based on the pug sheets.
surface_sheet = surface_create(960,2048);

//set up the sheet on a surface
surface_set_target(surface_sheet);
draw_clear_alpha(c_white,0);
draw_sprite(argument0,0,0,0);
surface_reset_target();


i2 = 0;
spr_stand[i] = scr_create_sprite(surface_sheet,i2,1,24,48);i2 += 1;
spr_sit[i] = scr_create_sprite(surface_sheet,i2,1,24,48);i2 += 1;
spr_stand_bite[i] = scr_create_sprite(surface_sheet,i2,1,24,48);i2 += 1;
spr_sit_bite[i] = scr_create_sprite(surface_sheet,i2,1,24,48);i2 += 1;
spr_sniff[i] = scr_create_sprite(surface_sheet,i2,6,24,48);i2 += 1;
spr_sniffed[i] = scr_create_sprite(surface_sheet,i2,6,24,48);i2 += 1;
spr_walk[i] = scr_create_sprite(surface_sheet,i2,8,24,48);i2 += 1;
spr_walk_bite[i] = scr_create_sprite(surface_sheet,i2,8,24,48);i2 += 1;
spr_walk_down[i] = scr_create_sprite(surface_sheet,i2,8,24,48);i2 += 1;
spr_walk_down_bite[i] = scr_create_sprite(surface_sheet,i2,8,24,48);i2 += 1;
spr_walk_up[i] = scr_create_sprite(surface_sheet,i2,8,24,48);i2 += 1;
spr_bark[i] = scr_create_sprite(surface_sheet,i2,6,24,48);i2 += 1;
spr_bite[i] = scr_create_sprite(surface_sheet,i2,7,24,48);i2 += 1;
spr_bite_low[i] = scr_create_sprite(surface_sheet,i2,7,24,48);i2 += 1;
spr_poop[i] = scr_create_sprite(surface_sheet,i2,16,24,48);i2 += 1;
spr_sick[i] = scr_create_sprite(surface_sheet,i2,9,24,48);i2 += 1;
spr_pee[i] = scr_create_sprite(surface_sheet,i2,19,24,48);i2 += 1;
//spr_squish[i] = scr_create_sprite(surface_sheet,i2,4,24,48);i2 += 1;
//spr_victory[i] = scr_create_sprite(surface_sheet,i2,4,24,48);i2 += 1;
//spr_diva[i] = scr_create_sprite(surface_sheet,i2,4,24,48);i2 += 1;
//spr_booty[i] = scr_create_sprite(surface_sheet,i2,4,24,48);i2 += 1;
//spr_poop_attack[i] = scr_create_sprite(surface_sheet,i2,11,24,48);i2 += 1;
spr_stung[i] = scr_create_sprite(surface_sheet,i2,1,24,48);i2 += 1;
spr_spit[i] = scr_create_sprite(surface_sheet,i2,6,24,48);i2 += 1;

spr_scoot[i] = scr_create_sprite(surface_sheet,i2,4,24,48);i2 += 1;
//spr_tramp_enter[i] = scr_create_sprite(surface_sheet,i2,10,24,46);i2 += 1;
//spr_tramp_exit[i] = scr_create_sprite(surface_sheet,i2,10,24,46);i2 += 1;

surface_free(surface_sheet);





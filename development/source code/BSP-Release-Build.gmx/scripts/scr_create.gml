//options should be first
scr_define_game_options();
scr_define_controls();

scr_define_misc_systems();
scr_define_title_screen();
scr_define_character_select();
scr_define_park_night();
scr_define_colors();
scr_define_options();

player = 0;
button[player,"A"] = 0;

vx = view_xview[0];
vy = view_yview[0];

i = 0;
scr_load_pug_sheets(spr_sammie_sheet);
spr_transform[i] = spr_sammie_transform;
spr_hover[i] = spr_sammie_hover;
spr_bubble_wand_use[i] = spr_sammie_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;


i+=1;
scr_load_pug_sheets(spr_alice_sheet);
spr_transform[i] = spr_sammie_transform;
spr_hover[i] = spr_sammie_hover;
spr_bubble_wand_use[i] = spr_sammie_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;

arrayname[5] = 0;

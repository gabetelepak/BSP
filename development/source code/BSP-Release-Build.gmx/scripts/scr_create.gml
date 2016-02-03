//options should be first
scr_define_game_options();
scr_define_controls();

scr_define_misc_systems();
scr_define_title_screen();
scr_define_character_select();
scr_define_park_night();
scr_define_colors();
scr_define_game_options();

player = 0;
button[player,"A"] = 0;
frisbee_catch = 0;

vx = view_xview[0];
vy = view_yview[0];

//sammie
i = 0;
scr_load_pug_sheets(spr_sammie_sheet);
g.spr_pugslide[i] = spr_slide_sammy;
spr_transform[i] = spr_sammie_transform;
spr_hover[i] = spr_sammie_hover;
spr_itemget[i] = spr_sammie_itemget;
spr_bubble_wand_use[i] = spr_sammie_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;
spr_bugnet_use[i] = spr_sammie_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;

//alice
i+=1;
scr_load_pug_sheets(spr_alice_sheet);
g.spr_pugslide[i] = spr_slide_alice;
spr_transform[i] = spr_alice_transform;
spr_hover[i] = spr_alice_hover;
spr_itemget[i] = spr_alice_itemget;
spr_bubble_wand_use[i] = spr_alice_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;
spr_bugnet_use[i] = spr_alice_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;

//bella
i+=1;
scr_load_pug_sheets(spr_bella_sheet);
g.spr_pugslide[i] = spr_slide_sammy;
spr_transform[i] = spr_bella_transform;
spr_hover[i] = spr_bella_hover;
spr_itemget[i] = spr_bella_itemget;
spr_bubble_wand_use[i] = spr_sammie_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;
spr_bugnet_use[i] = spr_sammie_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;

//edgar
i+=1;
scr_load_pug_sheets(spr_edgar_sheet);
g.spr_pugslide[i] = spr_slide_alice;
spr_transform[i] = spr_edgar_transform;
spr_hover[i] = spr_edgar_hover;
spr_itemget[i] = spr_edgar_itemget;
spr_bubble_wand_use[i] = spr_alice_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;
spr_bugnet_use[i] = spr_alice_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;


arrayname[5] = 0;

//fix bug when skipping to park
g.selected_char[0] = 0;
g.selected_char[1] = 1;



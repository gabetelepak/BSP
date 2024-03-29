//options should be first.
game_phase = 'start menu';//start menu, char select, tutorial, park night
scr_define_game_options();
scr_define_controls();

tiff_panels = 0;
manymouse_active = 0;
g.pewds_build = 0;
//scr_init_manymouse();

scr_define_misc_systems();
scr_define_title_screen();
scr_define_tutorial();
scr_define_character_select();
scr_define_park_night();
scr_define_colors();
scr_define_game_options();
scr_define_park_night_camera();
scr_define_score();
scr_define_talkingheads();
scr_define_treehouse();

player = 0;
pug_id[0] = 0;
pug_score[0] = 0;
pug_score_show[0] = 0;
pug_id[1] = 0;
pug_score[1] = 0;
pug_score_show[1] = 0;
button[player,"A"] = 0;
frisbee_catch = 0;
hint_time_max = 30*10;//30*45;
reset_time = 0;
target_bread = 0;

vx = view_xview[0];
vy = view_yview[0];

tut_power_hold = 0;

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
spr_bread_walk[i] = spr_sammie_bread_walk;
spr_bread_down[i] = spr_sammie_bread_down;
spr_bread_up[i] = spr_sammie_bread_up;
spr_bread_idle[i] = spr_sammie_bread_idle;
spr_jump[i] = spr_sammie_jump;
spr_good[i] = spr_sammie_good;
spr_dig[i] = spr_sammie_dig;


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
spr_bugnet_use[i] = spr_edgar_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;
spr_bread_walk[i] = spr_sammie_bread_walk;
spr_bread_down[i] = spr_sammie_bread_down;
spr_bread_up[i] = spr_sammie_bread_up;
spr_bread_idle[i] = spr_sammie_bread_idle;
spr_jump[i] = spr_alice_jump;
spr_good[i] = spr_alice_good;
spr_dig[i] = spr_alice_dig;


i+=1;

//bella
if g.pewds_build = 1{
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
spr_bugnet_use[i] = spr_maya_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;
spr_bread_walk[i] = spr_sammie_bread_walk;
spr_bread_down[i] = spr_sammie_bread_down;
spr_bread_up[i] = spr_sammie_bread_up;
spr_bread_idle[i] = spr_sammie_bread_idle;
spr_jump[i] = spr_bella_jump;
spr_good[i] = spr_bella_good;
spr_dig[i] = spr_sammie_dig;}

//convert above to maya
if g.pewds_build = 0{
scr_load_pug_sheets(spr_maya_sheet);
g.spr_pugslide[i] = spr_slide_maya;
spr_transform[i] = spr_bella_transform;
spr_hover[i] = spr_bella_hover;
spr_itemget[i] = spr_maya_itemget;
spr_bubble_wand_use[i] = spr_maya_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;
spr_bugnet_use[i] = spr_maya_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;
spr_bread_walk[i] = spr_sammie_bread_walk;
spr_bread_down[i] = spr_sammie_bread_down;
spr_bread_up[i] = spr_sammie_bread_up;
spr_bread_idle[i] = spr_sammie_bread_idle;
spr_jump[i] = spr_maya_jump;
spr_good[i] = spr_maya_good;
spr_dig[i] = spr_maya_dig;}

//edgar
i+=1;
scr_load_pug_sheets(spr_edgar_sheet);
g.spr_pugslide[i] = spr_slide_alice;
spr_transform[i] = spr_edgar_transform;
spr_hover[i] = spr_edgar_hover;
spr_itemget[i] = spr_edgar_itemget;
spr_bubble_wand_use[i] = spr_edgar_bubble_wand_use;
spr_bubble_wand_walk[i] = spr_sammie_bubble_wand_walk;
spr_bubble_wand_down[i] = spr_sammie_bubble_wand_down;
spr_bubble_wand_up[i] = spr_sammie_bubble_wand_up;
spr_bubble_wand_idle[i] = spr_sammie_bubble_wand_idle;
spr_bugnet_use[i] = spr_edgar_bugnet_use;
spr_bugnet_walk[i] = spr_sammie_bugnet_walk;
spr_bugnet_down[i] = spr_sammie_bugnet_down;
spr_bugnet_up[i] = spr_sammie_bugnet_up;
spr_bugnet_idle[i] = spr_sammie_bugnet_idle;
spr_frisbee_walk[i] = spr_sammie_frisbee_walk;
spr_frisbee_down[i] = spr_sammie_frisbee_down;
spr_frisbee_up[i] = spr_sammie_frisbee_up;
spr_frisbee_idle[i] = spr_sammie_frisbee_idle;
spr_bread_walk[i] = spr_sammie_bread_walk;
spr_bread_down[i] = spr_sammie_bread_down;
spr_bread_up[i] = spr_sammie_bread_up;
spr_bread_idle[i] = spr_sammie_bread_idle;
spr_jump[i] = spr_edgar_jump;
spr_good[i] = spr_edgar_good;
spr_dig[i] = spr_edgar_dig;


arrayname[5] = 0;

//fix bug when skipping to park
g.selected_char[0] = 0;
g.selected_char[1] = 1;

last_room = 0;
start_room = 0;


sound_mini_get = snd_get;

if g.pewds_build = 1{
sound_mini_get = snd_pewds_duck;}



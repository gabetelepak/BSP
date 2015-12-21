//options should be first
scr_define_game_options();
scr_define_controls();

scr_define_general_systems();
scr_define_title_screen();
scr_define_character_select();
scr_define_park_night();
scr_define_colors();
scr_define_options();

player = 0;
button[player,"A"] = 0;

i = 0;
scr_load_pug_sheets(spr_sammie_sheet);
spr_transform[i] = spr_sammie_transform;
spr_hover[i] = spr_sammie_hover;



i+=1;
scr_load_pug_sheets(spr_alice_sheet);
spr_transform[i] = spr_sammie_transform;
spr_hover[i] = spr_sammie_hover;

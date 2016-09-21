dont_show_objectives = 1;
game_finished = 0;
finished_time = 0;
idle_time = 0;
g.spr_left_ui[0] = 0;
g.spr_right_ui[0] = 0;
g.ui_scale[0] = 1;

g.spr_left_ui[1] = 0;
g.spr_right_ui[1] = 0;
g.ui_scale[1] = 1;

g.last_ui[0] = 0;
g.last_ui[1] = 0;


bones = 150;
bones_show = 0;
bones_time = 0;



scr_init_unlock_ui();

g.spr_left_ui[0] = spr_ui_bark;
g.spr_right_ui[0] = spr_ui_pee;
g.spr_left_ui[1] = spr_ui_bark;
g.spr_right_ui[1] = spr_ui_pee;

//orbyt checkbox
check_firefly = 0;
check_babyduck = 0;
check_granny = 0;
check_frog = 0;
check_duck = 0;
check_sandwich = 0;
check_xol = 0;


//intro tip "solve puzzles"
unlock_intro_tip_y = 120;
unlock_intro_tip = 8*30;


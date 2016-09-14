
view_xview[0] = 0;
view_yview[0] = 0;

//exit
if g.pug_id[0].x <= 32{
g.pug_id[0].x = 64;
g.ascend_treehouse = 149;
g.ascend_treehouse_dir = 'down';
screen_flash = 1;
game_phase='park night';
customize_furn = 0;
room_goto(rm_park_night);}


//open close costumize
if button[0,button_Y] && button_pressed[0,button_Y] < 2{
button[0,button_Y] = 0;
if customize_furn = 0{
customize_furn = 1;}else{customize_furn = 0;}}



//custom on
if customize_furn > 0{

//scroll through spots
if button[0,button_LEFT] && button_pressed[0,button_LEFT] < 2{
th_current_select_spot -= 1;
if th_current_select_spot < 0{th_current_select_spot = 5;
th_current_select_furn = th_select_furn[th_current_select_spot];}
if th_current_select_spot > 5{th_current_select_spot = 0;
th_current_select_furn = th_select_furn[th_current_select_spot];}
th_current_select_furn = th_select_furn[th_current_select_spot];}

if button[0,button_RIGHT] && button_pressed[0,button_RIGHT] < 2{
th_current_select_spot += 1;
if th_current_select_spot < 0{th_current_select_spot = 5;
th_current_select_furn = th_select_furn[th_current_select_spot];}
if th_current_select_spot > 5{th_current_select_spot = 0;
th_current_select_furn = th_select_furn[th_current_select_spot];}
th_current_select_furn = th_select_furn[th_current_select_spot];}

//scroll through items
th_selection_frame = 0;
if (button[0,button_LB] && button_pressed[0,button_LB] < 2) ||
(gamepad_button_check(g.gamepad[0], gp_shoulderlb) && button_pressed[0,button_LT] < 2){
scr_sound(snd_mm_switch,g.sfx_volume);
th_current_select_furn -= 1;
th_selection_frame = 1;}

if (button[0,button_RB] && button_pressed[0,button_RB] < 2) ||
(gamepad_button_check(g.gamepad[0], gp_shoulderrb) && button_pressed[0,button_RT] < 2){
scr_sound(snd_mm_switch,g.sfx_volume);
th_current_select_furn += 1;
th_selection_frame = 2;}

if th_current_select_furn < 0{th_current_select_furn = max_th_furn;}
if th_current_select_furn > max_th_furn{th_current_select_furn = 0;}

//confirm build item.
if button[0,button_X] && button_pressed[0,button_X] < 2{
th_selection_frame = 3;
th_select_furn[th_current_select_spot] = th_current_select_furn;

if th_furn_item[th_select_furn[th_current_select_spot]] != spr_blank{
i = sprite_get_height(th_furn_item[th_select_furn[th_current_select_spot]]);
repeat(3){
scr_sound(snd_mm_place,g.sfx_volume);
scr_sparkle(th_select_x[th_current_select_spot],th_select_y[th_current_select_spot]-(i/2),i,3);}}
else{
scr_sound(snd_mm_cant_place,g.sfx_volume);
scr_dust(th_select_x[th_current_select_spot],th_select_y[th_current_select_spot]-(i/2),135,3);
scr_dust(th_select_x[th_current_select_spot],th_select_y[th_current_select_spot]-(i/2),45,3);
scr_dust(th_select_x[th_current_select_spot],th_select_y[th_current_select_spot]-(i/2),90,3);}}












}

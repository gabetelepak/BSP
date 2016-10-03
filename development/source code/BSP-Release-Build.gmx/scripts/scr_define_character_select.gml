scr_define_chartut();
idle_anim = 0;
room_phase = 0;

if game_phase = 'char select' && room = rm_park_night{
view_xview[0] = 352;
view_yview[0] = 300;
vx = view_xview[0];
vy = view_yview[0];



}



g.char_startx[0] = 0;
g.char_starty[0] = 0;
g.char_startx[1] = 0;
g.char_starty[1] = 0;

i = 0;
repeat(8){
select_anim[i] = 0;
i+=1;}

selected_char[0] = -1;
char_head_roll[0] = 0;
selected_char_confirm[0] = 0;

selected_char[1] = -1;
char_head_roll[1] = 0;
selected_char_confirm[1] = 0;


i = 0;
repeat(8){
bg_anim[i] = 0;
i+=1;}

i = 0;
char_idle[i] = spr_char_sammie_idle;
char_select[i] = spr_char_sammie_select;
char_big[i] = spr_char_sammie_big;
char_name[i] = spr_char_sammie_name;
char_locked[i] = 0;
i+=1;
char_idle[i] = spr_char_alice_idle;
char_select[i] = spr_char_alice_select;
char_big[i] = spr_char_alice_big;
char_name[i] = spr_char_alice_name;
char_locked[i] = 0;
i+=1;
if g.pewds_build = 0{
char_idle[i] = spr_char_maya_idle;
char_select[i] = spr_char_maya_select;
char_big[i] = spr_char_maya_big;
char_name[i] = spr_char_maya_name;
char_locked[i] = 0;}
else{
char_idle[i] = spr_char_bella_idle;
char_select[i] = spr_char_bella_select;
char_big[i] = spr_char_bella_big;
char_name[i] = spr_char_bella_name;
char_locked[i] = 0;}
i+=1;
char_idle[i] = spr_char_edgar_idle;
char_select[i] = spr_char_edgar_select;
char_big[i] = spr_char_edgar_big;
char_name[i] = spr_char_edgar_name;
char_locked[i] = 0;
i+=1;
//locked
char_idle[i] = spr_char_doug_locked;
char_select[i] = spr_char_doug_locked;
char_big[i] = spr_blank;
char_name[i] = spr_blank;
char_locked[i] = 1;
i+=1;
char_idle[i] = spr_char_burgie_locked;
char_select[i] = spr_char_burgie_locked;
char_big[i] = spr_blank;
char_name[i] = spr_blank;
char_locked[i] = 1;
i+=1;
char_idle[i] = spr_char_maya_locked;
char_select[i] = spr_char_maya_locked;
char_big[i] = spr_blank;
char_name[i] = spr_blank;
char_locked[i] = 0;
i+=1;
char_idle[i] = spr_char_puglie_locked;
char_select[i] = spr_char_puglie_locked;
char_big[i] = spr_blank;
char_name[i] = spr_blank;
char_locked[i] = 1;
i+=1;

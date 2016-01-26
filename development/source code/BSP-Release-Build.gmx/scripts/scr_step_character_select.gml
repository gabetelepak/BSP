idle_anim += .1;
if idle_anim >= 8{
idle_anim = 0;}

i = 0;
repeat(8){
if (g.selected_char_confirm[0] = 1 || g.selected_char_confirm[1] = 1) &&
(g.selected_char[0] = i || g.selected_char[1] = i){
select_anim[i] += .33;}
if select_anim[i] >= 8{
select_anim[i] = 8;}
i+=1;}

//character nav
i = 0;
repeat(2){
if i = 0{i2 = 1;}else{i2 = 0;}

if selected_char_confirm[i] < 1{
if button[i,button_LEFT] && press_delay[i] = 0{
selected_char_confirm[i] = 0
press_delay[i] = 10;
selected_char[i] -= 1;
char_head_roll[i] = 0;
}
if button[i,button_RIGHT] && press_delay[i] = 0{
selected_char_confirm[i] = 0
press_delay[i] = 10;
selected_char[i] += 1;
char_head_roll[i] = 0;
}

if button[i,button_LEFT]{
selected_char_confirm[i] = 0
if selected_char[i] = selected_char[i2]{selected_char[i] -= 1;}
if selected_char[i] < 0{
selected_char[i] = 3;
if selected_char[i] = selected_char[i2]{selected_char[i] = 2;}
}}

if button[i,button_RIGHT]{
selected_char_confirm[i] = 0
if selected_char[i] = selected_char[i2]{selected_char[i] += 1;}
if selected_char[i] > 3{
selected_char[i] = 0;
if selected_char[i] = selected_char[i2]{selected_char[i] = 1;}}}
}

//confirm selection
if button[i,button_X] || button[i,button_A]{
if selected_char[i] > -1 && selected_char_confirm[i] < 1{
selected_char_confirm[i] = 1;
select_anim[selected_char[i]] = 0;}
}

//un confirm
if button[i,button_B]{
if selected_char_confirm[i] > 0{
selected_char_confirm[i] = 0;
select_anim[selected_char[i]] = 0;}
}

//goto park
if selected_char_confirm[0] > 0 && selected_char_confirm[1] > 0{
if button[i,button_A]{room_goto(rm_park_night);}}

i+=1;}







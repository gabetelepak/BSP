var islot = argument0;

if press_delay[islot] > 0{
press_delay[islot] -= 1;}




button[islot,button_A] = 0;
button[islot,button_X] = 0;
button[islot,button_B] = 0;
button[islot,button_Y] = 0;
button[islot,button_LB] = 0;
button[islot,button_RB] = 0;
button[islot,button_LT] = 0;
button[islot,button_RT] = 0;

button[islot,button_LEFT] = 0;
button[islot,button_RIGHT] = 0;
button[islot,button_UP] = 0;
button[islot,button_DOWN] = 0;

button[islot,button_DLEFT] = 0;
button[islot,button_DRIGHT] = 0;
button[islot,button_DUP] = 0;
button[islot,button_DDOWN] = 0;


button[islot,button_A] = max(gamepad_button_check(gamepad[islot], gp_face1),keyboard_check(vk_enter));

if gamepad_axis_value(gamepad[islot], gp_axislh) < -.4{button[islot,button_LEFT] = abs(gamepad_axis_value(gamepad[islot], gp_axislh));}
if gamepad_axis_value(gamepad[islot], gp_axislh) > .4{button[islot,button_RIGHT] = gamepad_axis_value(gamepad[islot], gp_axislh);}

if gamepad_axis_value(gamepad[islot], gp_axislv) < -.4{button[islot,button_UP] = abs(gamepad_axis_value(gamepad[islot], gp_axislv));}
if gamepad_axis_value(gamepad[islot], gp_axislv) > .4{button[islot,button_DOWN] = gamepad_axis_value(gamepad[islot], gp_axislv);}


//controller only, no keyboard.
button[islot,button_LB] = gamepad_button_check(gamepad[islot], gp_shoulderl);
button[islot,button_RB] = gamepad_button_check(gamepad[islot], gp_shoulderr);



button[islot,button_DLEFT] = gamepad_button_check(gamepad[islot], gp_padl);
button[islot,button_DRIGHT] = gamepad_button_check(gamepad[islot], gp_padr);
button[islot,button_DUP] = gamepad_button_check(gamepad[islot], gp_padu);
button[islot,button_DDOWN] = gamepad_button_check(gamepad[islot], gp_padd);

if islot = 0{
button[islot,button_LEFT] = max(button[islot,button_LEFT],keyboard_check(ord('A')));
button[islot,button_RIGHT] = max(button[islot,button_RIGHT],keyboard_check(ord('D')));
button[islot,button_UP] = max(button[islot,button_UP],keyboard_check(ord('W')));
button[islot,button_DOWN] = max(button[islot,button_DOWN],keyboard_check(ord('S')));
button[islot,button_X] = gamepad_button_check(gamepad[islot], gp_face3);
button[islot,button_B] = gamepad_button_check(gamepad[islot], gp_face2);
button[islot,button_Y] = max(gamepad_button_check(gamepad[islot], gp_face4),keyboard_check(ord('2')),keyboard_check(ord('3')));
button[islot,button_LT] = max(gamepad_button_check(gamepad[islot], gp_shoulderlb),keyboard_check(ord('Q')),button[islot,button_X]);
button[islot,button_RT] = max(gamepad_button_check(gamepad[islot], gp_shoulderrb),keyboard_check(ord('E')),button[islot,button_B]);
}
else{
button[islot,button_LEFT] = max(button[islot,button_LEFT],keyboard_check(ord('J')));
button[islot,button_RIGHT] = max(button[islot,button_RIGHT],keyboard_check(ord('L')));
button[islot,button_UP] = max(button[islot,button_UP],keyboard_check(ord('I')));
button[islot,button_DOWN] = max(button[islot,button_DOWN],keyboard_check(ord('K')));
button[islot,button_X] = gamepad_button_check(gamepad[islot], gp_face3);
button[islot,button_B] = gamepad_button_check(gamepad[islot], gp_face2);
button[islot,button_Y] = max(gamepad_button_check(gamepad[islot], gp_face4),keyboard_check(ord('8')),keyboard_check(ord('9')));
button[islot,button_LT] = max(gamepad_button_check(gamepad[islot], gp_shoulderlb),keyboard_check(ord('U')),button[islot,button_X]);
button[islot,button_RT] = max(gamepad_button_check(gamepad[islot], gp_shoulderrb),keyboard_check(ord('O')),button[islot,button_B]);

}


i = 0;
repeat(button_slots_max){
if button[islot,i] > 0{button_pressed[islot,i] += 1;}
else{button_pressed[islot,i] = 0;}
i+=1;}

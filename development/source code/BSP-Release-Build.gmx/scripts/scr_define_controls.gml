i= 0;
i2 = 0;
repeat(8){
gamepad[i] = -1;
press_delay[i] = 0;
if gamepad_is_connected(i){
gamepad[i2] = i;
gamepad_set_button_threshold(i, 0.4);
i2+=1;}
i+=1;}

i = 0;
button_A= i;i+=1;
button_X= i;i+=1;
button_B= i;i+=1;
button_Y= i;i+=1;
button_LB= i;i+=1;
button_RB= i;i+=1;
button_LT= i;i+=1;
button_RT= i;i+=1;
button_LEFT= i;i+=1;
button_RIGHT= i;i+=1;
button_UP= i;i+=1;
button_DOWN= i;i+=1;
button_DLEFT= i;i+=1;
button_DRIGHT= i;i+=1;
button_DUP= i;i+=1;
button_DDOWN= i;i+=1;
button_slots_max = i-1;

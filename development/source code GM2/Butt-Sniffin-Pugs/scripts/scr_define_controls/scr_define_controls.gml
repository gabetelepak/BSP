i2 = 1;
repeat(8){
gamepad[i2] = -1;
i2+=1;}


i= 0;
i2 = 1;
repeat(8){
if gamepad_is_connected(i){
gamepad[i2] = i;
gamepad_set_button_threshold(i, 0.5);
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
button_start = i;i+=1;
button_select = i;i+=1;
var button_slots_max = i-1;

i = 0;
i2 = 1;
repeat 2{
repeat button_slots_max{
button[i2,i] = 0;
button_pressed[i2,i] = 0;
button_released[i2,i] = 0;
i+=1;}

lsh[i2] = 0;
lhv[i2] = 0;
rsh[i2] = 0;
rhv[i2] = 0;
i2 += 1;}
//button to check, input var

button_pressed[islot,argument0] = 0;
button_released[islot,argument0] = 0;
if argument1{
	if button[islot,argument0] > 0{button[islot,argument0] += 1;}
	else{button_pressed[islot,argument0] = 1;button[islot,argument0] = 1;}
}
else{
	if button[islot,argument0] > 0{button_released[islot,argument0] = 1;}
button[islot,argument0] = 0;}

//always runs for 2 controllers max.
islot = 0;
repeat 2{


lsh[islot] = gamepad_axis_value(gamepad[islot], gp_axislh);
lsv[islot] = gamepad_axis_value(gamepad[islot], gp_axislv);

if keyboard_check(ord("A")){lsh[islot] = -1;}
if keyboard_check(ord("D")){lsh[islot] = 1;}
if keyboard_check(ord("W")){lsv[islot] = -1;}
if keyboard_check(ord("S")){lsv[islot] = 1;}

i = max(gamepad_button_check(gamepad[islot], gp_face1), keyboard_check(vk_space));
scr_button_check(button_A,i);










islot += 1;}
//always runs for 2 controllers max.
islot = 1;
repeat 2{


lsh[islot] = real(gamepad_axis_value(gamepad[islot], gp_axislh));
lsv[islot] = real(gamepad_axis_value(gamepad[islot], gp_axislv));

if string(lsh[islot]) = "0.00"{lsh[islot]=0;}
if string(lsv[islot]) = "0.00"{lsv[islot]=0;}

//temp player one.
if islot = 1{
if keyboard_check(ord("A")){lsh[islot] = -1;}
if keyboard_check(ord("D")){lsh[islot] = 1;}
if keyboard_check(ord("W")){lsv[islot] = -1;}
if keyboard_check(ord("S")){lsv[islot] = 1;}

i = max(gamepad_button_check(gamepad[islot], gp_face1), keyboard_check(ord("Z")));
scr_button_check(button_A,i);

i = max(gamepad_button_check(gamepad[islot], gp_face3), keyboard_check(ord("Q")));
scr_button_check(button_X,i);

i = max(gamepad_button_check(gamepad[islot], gp_face2), keyboard_check(ord("E")));
scr_button_check(button_B,i);

i = max(gamepad_button_check(gamepad[islot], gp_face4), keyboard_check(ord("X")));
scr_button_check(button_Y,i);


}


//temp player two.
if islot = 2{
if keyboard_check(ord("J")){lsh[islot] = -1;}
if keyboard_check(ord("L")){lsh[islot] = 1;}
if keyboard_check(ord("I")){lsv[islot] = -1;}
if keyboard_check(ord("K")){lsv[islot] = 1;}

i = max(gamepad_button_check(gamepad[islot], gp_face1), keyboard_check(ord("Z")));
scr_button_check(button_A,i);

i = max(gamepad_button_check(gamepad[islot], gp_face3), keyboard_check(ord("Q")));
scr_button_check(button_X,i);

i = max(gamepad_button_check(gamepad[islot], gp_face2), keyboard_check(ord("E")));
scr_button_check(button_B,i);

i = max(gamepad_button_check(gamepad[islot], gp_face4), keyboard_check(ord("X")));
scr_button_check(button_Y,i);

}

//start button either player
i = max(gamepad_button_check(gamepad[islot], gp_start), keyboard_check(vk_enter));
scr_button_check(button_start,i);

islot += 1;}









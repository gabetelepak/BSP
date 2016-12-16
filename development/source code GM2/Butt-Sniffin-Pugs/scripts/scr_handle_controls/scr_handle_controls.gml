//always runs for 2 controllers max.
islot = 0;
repeat 2{



i = gamepad_button_check(gamepad[islot], gp_face1);
scr_button_check(button_A,i);










islot += 1;}
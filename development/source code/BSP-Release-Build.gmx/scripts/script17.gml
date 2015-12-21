if window_has_focus() && (g.force_gamepad || controls = "gamepad"){

gameslot = g.gamepad[player];

lgamepad_hmove = 0;
lgamepad_vmove = 0;
//dir = point_direction(10, 10, 10+gamepad_axis_value(gameslot, gp_axislh), 10+gamepad_axis_value(gameslot, gp_axislv));
lgamepad_hmove = gamepad_axis_value(gameslot, gp_axislh);
lgamepad_vmove = gamepad_axis_value(gameslot, gp_axislv);

if abs(lgamepad_hmove) < .4{
lgamepad_hmove = 0;}else{
//if lgamepad_hmove > 0{lgamepad_hmove = 1;}
//else{lgamepad_hmove = -1;}
}

if abs(lgamepad_vmove) < .4{
lgamepad_vmove = 0;}else{
//if lgamepad_vmove > 0{lgamepad_vmove = 1;}
//else{lgamepad_vmove = -1;}
}

rgamepad_hmove = 0;
rgamepad_vmove = 0;
//dir = point_direction(10, 10, 10+gamepad_axis_value(gameslot, gp_axislh), 10+gamepad_axis_value(gameslot, gp_axislv));
rgamepad_hmove = gamepad_axis_value(gameslot, gp_axisrh);
rgamepad_vmove = gamepad_axis_value(gameslot, gp_axisrv);

if abs(rgamepad_hmove) < .4{
rgamepad_hmove = 0;}else{
if rgamepad_hmove > 0{rgamepad_hmove = 1;}
else{rgamepad_hmove = -1;}}

if abs(rgamepad_vmove) < .4{
rgamepad_vmove = 0;}else{
if rgamepad_vmove > 0{rgamepad_vmove = 1;}
else{rgamepad_vmove = -1;}}


/*
if gamepad_axis_value(gamepad, gp_axislh) > .5 ||
gamepad_axis_value(gamepad, gp_axislv) > .5{
move = 1;}
*/

gamepad_str = "";

if input_delay <= 0{

if (gamepad_button_check(gameslot, gp_start)) //BUTTON_start
{
    gamepad_str = "START";
}


if (gamepad_button_check(gameslot, gp_face3)) //BUTTON_X
{
    gamepad_str = "X";// U
}

if (gamepad_button_check(gameslot, gp_face4)) //BUTTON_Y
{
    gamepad_str = "Y";// Y
}

if (gamepad_button_check(gameslot, gp_face2)) //BUTTON_B
{
    gamepad_str = "B";// A
}

if (gamepad_button_check(gameslot, gp_face1)) //BUTTON_A
{
gamepad_str = "A";// O
    
}

if (gamepad_button_check(gameslot, gp_padd)) //DPAD_DOWN
{   
    gamepad_str = "DOWN";
}

if (gamepad_button_check(gameslot, gp_padl)) //DPAD_LEFT
{
    gamepad_str = "LEFT";
}

if (gamepad_button_check(gameslot, gp_padr)) //DPAD_RIGHT
{
    gamepad_str = "RIGHT";
}

if (gamepad_button_check(gameslot, gp_padu)) //DPAD_UP
{
    gamepad_str = "UP";
}

if (gamepad_button_check(gameslot, gp_shoulderl)) //LEFT_BUMPER
{
    gamepad_str = "BUMP LEFT";
}

if (gamepad_button_check(gameslot, gp_shoulderlb)) //LEFT_TRIGGER
{
    gamepad_str = "TRIG LEFT";
}



if (gamepad_button_check(gameslot, gp_shoulderr)) //RIGHT_BUMPER
{
   gamepad_str = "BUMP RIGHT";
}

if (gamepad_button_check(gameslot, gp_shoulderrb)) //RIGHT_TRIGGER
{
    gamepad_str = "TRIG RIGHT";
}

}

if input_delay > 0{input_delay -= 1;}

if gamepad_str != ""{
input_delay = 5;}
}





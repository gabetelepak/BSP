/*
numMice = 0;
if manymouse_active = 1{

window_set_cursor(cr_none);

numMice = manymouse_init();

//if (numMice < 2) {
// YOU PROBABLY WANT TO WARN THE USER THAT THERE AREN'T TWO MICE CONNECTED
// WE'LL SAY THERE ARE TWO MICE JUST SO CALLING ypos[1] DOESN'T CRASH THE GAME
//numMice = 2;
//}

var i;
for (i = 0; i < 8; i += 1) {
    xpos[i] = mouse_x;
    ypos[i] = mouse_y;
    dxpos[i] = xpos[i];
    dypos[i] = ypos[i];
    var ii;
    for (ii = 0; ii < 5; ii += 1) {
        mm_button[i,ii] = false;
    }
}

}
*/

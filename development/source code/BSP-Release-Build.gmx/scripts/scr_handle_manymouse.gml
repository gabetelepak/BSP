
//mm_button[device,button]
//0 = left, 1 = right, 2 = middle



while (manymouse_poll()) {
    switch (manymouse_get_type()) {
    case 0:
        // MANYMOUSE_EVENT_ABSMOTION
        break;
    case 1:
        // MANYMOUSE_EVENT_RELMOTION
        if (manymouse_get_item() == 0) {
            xpos[manymouse_get_device()] = manymouse_get_value();
            //if (xpos[manymouse_get_device()] < 0) { xpos[manymouse_get_device()] = 0; }
            //if (xpos[manymouse_get_device()] > room_width) { xpos[manymouse_get_device()] = room_width; }
        } else {
            ypos[manymouse_get_device()] = manymouse_get_value();
            //if (ypos[manymouse_get_device()] < 0) { ypos[manymouse_get_device()] = 0; }
            //if (ypos[manymouse_get_device()] > room_height) { ypos[manymouse_get_device()] = room_height; }
        }
        break;
    case 2:
        // MANYMOUSE_EVENT_BUTTON
        mm_button[manymouse_get_device(), manymouse_get_item()] = manymouse_get_value();
        break;
    case 3:
        // MANYMOUSE_EVENT_SCROLL
        break;
    case 4:
        // MANYMOUSE_EVENT_DISCONNECT
        // YOU MIGHT WANT TO SAY THAT A MOUSE DISCONNECTED HERE
        break;
    case 5:
        // MANYMOUSE_EVENT_MAX
        break;
    }
}



i = 0;
repeat(8){
dxpos[i] = xpos[i];
dypos[i] = ypos[i];
i+=1;}
////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////////////////////










draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font1);


i = 0;
repeat(8){
//draw_text(10,10+i*15,"gamepad["+string(i)+"]="+string(gamepad[i]));
i+=1;}

i = 0;
draw_text(10,10+i*15,selected_char[0]);i+=1;
draw_text(10,10+i*15,selected_char[1]);i+=1;
draw_text(10,10+i*15,selected_char_confirm[0]);i+=1;
draw_text(10,10+i*15,selected_char_confirm[1]);i+=1;
draw_text(10,10+i*15,button[0,button_UP]);i+=1;
draw_text(10,10+i*15,button[0,button_DOWN]);i+=1;
draw_text(10,10+i*15,button[0,button_X]);i+=1;
draw_text(10,10+i*15,button[0,button_B]);i+=1;
draw_text(10,10+i*15,button[0,button_Y]);i+=1;


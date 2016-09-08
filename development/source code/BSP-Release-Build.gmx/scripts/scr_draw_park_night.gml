





if park_night_intro = 0{
scr_draw_magic_mode_ui();
scr_draw_park_ui();
scr_draw_talkingheads();}
else{
draw_set_alpha(min(.5,.5*(park_night_intro/60)));
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,0);
draw_set_alpha(1);
draw_sprite_ext(spr_title_card_central_bark,0,vx,vy,1,1,0,c_white,park_night_intro/30);
}





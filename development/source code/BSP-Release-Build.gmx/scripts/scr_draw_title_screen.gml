

//draw logo and start
if logo_alpha > 0{
draw_sprite_ext(spr_title_screen_blur,0,0,0,1,1,0,c_white,logo_alpha);
if tiff_panels = 1{draw_sprite_ext(spr_title_logo_pugs_sniffin_pugs,0,room_width/2,10,1,1,0,c_white,logo_alpha);}else{
draw_sprite_ext(spr_title_logo,0,room_width/2,10,1,1,0,c_white,logo_alpha);}
draw_sprite_ext(spr_title_start_button,0,room_width/2,room_height-50+button_bounce,1,1,0,c_white,logo_alpha);
}

//draw splash screen
draw_sprite_ext(spr_spacebeagles_splash,0,0,0,1,1,0,c_white,splash_alpha);

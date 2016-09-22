

//draw logo and start
if logo_alpha > 0{
if game_phase = 'start menu'{
draw_sprite_ext(spr_title_screen_bg,g.anim*.25,0,0,1,1,0,c_white,1);}
draw_sprite_ext(spr_title_screen_blur,0,0,0,1,1,0,c_white,logo_alpha);
draw_sprite_ext(spr_ks_sticker,0,0,0,1,1,0,c_white,logo_alpha);
draw_sprite_ext(spr_pewds_sticker,g.anim*.25,room_width-20,room_height-20,1,1,0,c_white,logo_alpha);
if tiff_panels = 1{draw_sprite_ext(spr_title_logo_pugs_sniffin_pugs,0,room_width/2,10,1,1,0,c_white,logo_alpha);}else{
draw_sprite_ext(spr_title_logo,0,room_width/2,10,1,1,0,c_white,logo_alpha);}
draw_sprite_ext(spr_title_start_button,0,room_width/2,room_height-50+button_bounce,1,1,0,c_white,logo_alpha);
}

//draw splash screen
draw_sprite_ext(spr_spacebeagles_splash,0,0,0,1,1,0,c_white,splash_alpha);

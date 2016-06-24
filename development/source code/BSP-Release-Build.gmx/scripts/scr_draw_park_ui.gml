//temp turned off for orbyt build
//scr_draw_unlock_ui();


//bottom ui
draw_sprite_ext(spr_park_ui,0,vx,vy,1,1,0,c_white,1);




i = 0;
repeat(2){
if spr_left_ui[i] != last_ui[i]{
last_ui[i] = spr_left_ui[i];
ui_scale[i] = 1.4;}

if ui_scale[i] > 1{ui_scale[i] = ui_scale[i] * .975;}
else{ui_scale[i] = 1;}

i+=1;}

draw_sprite_ext(spr_left_ui[0],0,vx+(22),vy+(340),ui_scale[0],ui_scale[0],0,c_white,1);
draw_sprite_ext(spr_right_ui[0],0,vx+(66),vy+(340),ui_scale[0],ui_scale[0],0,c_white,1);

draw_sprite_ext(spr_left_ui[1],0,vx+(574),vy+(340),ui_scale[1],ui_scale[1],0,c_white,1);
draw_sprite_ext(spr_right_ui[1],0,vx+(618),vy+(340),ui_scale[1],ui_scale[1],0,c_white,1);



//top ui
//scr_draw_park_ui_top_panel();

//orbyt build top panel

if room = rm_park_night{

//solve puzzle text for 5 seconds when game starts
if park_night_intro = 0{
if unlock_intro_tip > 0{unlock_intro_tip -= 1;
if unlock_intro_tip_y > 0{unlock_intro_tip_y -= unlock_intro_tip_y*.05+.5;}
draw_sprite_ext(spr_park_intro_tip,0,vx+vw/2,vy+48+20-unlock_intro_tip_y,1,1,0,c_white,unlock_intro_tip/15);}}

draw_sprite_ext(spr_orbyt_panel,game_finished,vx+vw/2,vy,1,1,0,c_white,1);
if game_finished = 0{
ix = (vx+vw/2)-168+86;
draw_sprite_ext(spr_ui_checkmark,check_firefly,ix,vy+17,1,1,0,c_white,1);
ix += 33;
draw_sprite_ext(spr_ui_checkmark,check_babyduck,ix,vy+17,1,1,0,c_white,1);
ix += 33;
draw_sprite_ext(spr_ui_checkmark,check_granny,ix,vy+17,1,1,0,c_white,1);
ix += 33;
draw_sprite_ext(spr_ui_checkmark,check_frog,ix,vy+17,1,1,0,c_white,1);
ix += 33;
draw_sprite_ext(spr_ui_checkmark,check_duck,ix,vy+17,1,1,0,c_white,1);
ix += 33;
draw_sprite_ext(spr_ui_checkmark,check_sandwich,ix,vy+17,1,1,0,c_white,1);
ix += 33;}





//bones ui
if bones > bones_show{
bones_show += .25;
bones_time = 60;}

if bones_time > 0{
bones_time -= 1;}


draw_sprite_ext(spr_bone_ui,0,vx+10,vy+15+10,1,1,0,c_white,bones_show/5);
draw_set_alpha(bones_show/5);
draw_set_font(font_bsp14);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(vx+10+35,vy+23,string(floor(bones_show)));
draw_set_color(c_white);
draw_text(vx+10+35,vy+21,string(floor(bones_show)));
draw_set_alpha(1);

//draw reset timer
if unlock_intro_tip <= 0{
draw_set_font(font_bsp23);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

i = "";
i2 = floor(reset_time/30/60);
i3 = floor(reset_time/30)-60*i2;
if string_length(string(i3)) < 2{i3 = "0"+string(i3);}
i = "TIME LEFT: "+string(i2)+":"+string(i3);

if reset_time < 30*5{i = "TIME'S UP!";}

draw_text(vx+(vw/2)+124+12,vy+14+2,string(i));
draw_set_color(c_white);
draw_text(vx+(vw/2)+124+12,vy+14,string(i));
}


}//end if room = park




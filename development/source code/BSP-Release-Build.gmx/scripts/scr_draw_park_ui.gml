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
draw_sprite_ext(spr_orbyt_panel,i,vx+vw/2,vy,1,1,0,c_white,1);
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
ix += 33;





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



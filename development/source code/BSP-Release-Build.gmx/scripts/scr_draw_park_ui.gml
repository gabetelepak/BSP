scr_draw_unlock_ui();


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

if secrets_found >= 8{secrets_found = 8;secrets_found_panel = 0;secrets_found_panel_y = 0;}
i = secrets_found;
if secrets_found_panel >= 1{
secrets_found_panel_stage += 2;

if secrets_found_panel_stage = 24{
scr_sound(snd_scratch,g.sfx_volume);}

if secrets_found_panel_stage > 30 && secrets_found_panel_stage < 90{
i = secrets_found + secrets_found_panel;}

if secrets_found_panel_stage > 60 && secrets_found_panel_stage <= 90{
secrets_found_panel_y += 2;}

if secrets_found_panel_stage = 90{
secrets_found += 2;
}

if secrets_found_panel_stage > 90 && secrets_found_panel_stage <= 120{
secrets_found_panel_y -= 2;}

if secrets_found_panel_stage > 120{
secrets_found_panel -= 1;
secrets_found_panel_y = 0;
secrets_found_panel_stage = 0;}
}

if secrets_found <= 9{
draw_sprite_ext(spr_secret_panel,i,vx+vw/2,vy-secrets_found_panel_y,1,1,0,c_white,1);
}

ix = (vx+vw/2)-128-25;
iy = vy+25;

if magic_mode_alert >= 1{
magic_mode_alert += .25;
if magic_mode_alert > 20{magic_mode_alert = 1;}}

draw_sprite_ext(spr_mm_ui_button,0,ix,iy,1,1,0,c_white,1);
draw_sprite_ext(spr_button_x,3,ix-15,iy+15,1,1,0,c_white,1);
if magic_mode_alert > 0{
draw_sprite_ext(spr_alert,max(magic_mode_alert-1,0),ix-15-8,iy+15-8,1,1,0,c_white,1);}

ix = (vx+vw/2)+128+25;
iy = vy+25;

if unlock_alert >= 1{
unlock_alert += .25;
if unlock_alert > 20{unlock_alert = 1;}}


draw_sprite_ext(spr_objectives_ui_button,0,ix,iy,1,1,0,c_white,1);
draw_sprite_ext(spr_button_b,3,ix+15,iy+15,1,1,0,c_white,1);
if unlock_alert > 0{
draw_sprite_ext(spr_alert,max(0,unlock_alert-1),ix+15+8,iy+15-8,1,1,0,c_white,1);}


//bones ui
if bones > bones_show{
bones_show += .25;
bones_time = 60;}

if bones_time > 0{
bones_time -= 1;}


draw_sprite_ext(spr_bone_ui,0,vx+10,vy+15+10,1,1,0,c_white,bones_show/10);
draw_set_alpha(bones_show/10);
draw_set_font(font_bsp14);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(vx+10+35,vy+23,string(floor(bones_show)));
draw_set_color(c_white);
draw_text(vx+10+35,vy+21,string(floor(bones_show)));
draw_set_alpha(1);



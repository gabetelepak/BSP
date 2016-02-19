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


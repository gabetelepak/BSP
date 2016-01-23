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
draw_sprite_ext(spr_ui_goal,0,vx+vw/2,vy,1,1,0,c_white,1);

ix = (vx+vw/2)-128-25;
iy = vy+25;

draw_sprite_ext(spr_mm_ui_button,0,ix,iy,1,1,0,c_white,1);
draw_sprite_ext(spr_button_x,3,ix-15,iy+15,1,1,0,c_white,1);
draw_sprite_ext(spr_alert,0,ix-15-8,iy+15-8,1,1,0,c_white,1);

ix = (vx+vw/2)+128+25;
iy = vy+25;

draw_sprite_ext(spr_objectives_ui_button,0,ix,iy,1,1,0,c_white,1);
draw_sprite_ext(spr_button_b,3,ix+15,iy+15,1,1,0,c_white,1);
draw_sprite_ext(spr_alert,0,ix+15+8,iy+15-8,1,1,0,c_white,1);







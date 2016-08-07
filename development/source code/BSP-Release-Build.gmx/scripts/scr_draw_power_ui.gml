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

draw_sprite_ext(spr_left_ui[0],0,vx+(22-4),vy+(340),ui_scale[0],ui_scale[0],0,c_white,1);
draw_sprite_ext(spr_right_ui[0],0,vx+(66+2),vy+(340),ui_scale[0],ui_scale[0],0,c_white,1);

draw_sprite_ext(spr_left_ui[1],0,vx+(574-2),vy+(340),ui_scale[1],ui_scale[1],0,c_white,1);
draw_sprite_ext(spr_right_ui[1],0,vx+(618+4),vy+(340),ui_scale[1],ui_scale[1],0,c_white,1);

//buttons
if g.manymouse_active = 0{
i = 23;
i2 = 8;
draw_sprite_ext(spr_ui_x,0,vx+(22-4)+i,vy+(340)+i2,1,1,0,c_white,1);
draw_sprite_ext(spr_ui_b,0,vx+(66+2)+i,vy+(340)+i2,1,1,0,c_white,1);

draw_sprite_ext(spr_ui_x,0,vx+(574-2)-i,vy+(340)+i2,1,1,0,c_white,1);
draw_sprite_ext(spr_ui_b,0,vx+(618+4)-i,vy+(340)+i2,1,1,0,c_white,1);}


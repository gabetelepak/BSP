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


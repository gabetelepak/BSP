ix = (((g.pug_id[0].x+g.pug_id[1].x)/2)/room_width)*8;
iy = (((g.pug_id[0].y+g.pug_id[1].y)/2)/room_height)*4;

draw_sprite(spr_treehouse_fg,0,(-ix)-8,(-iy)-8);

//draw selected spot and item.

i = th_current_select_spot;

//smooth move selector over.
idis = scr_dis(th_select_x[i],th_select_y[i],select_draw_x,select_draw_y);
if customize_furn > 0{
if idis > 1{
select_draw_x += (th_select_x[i]-select_draw_x) *.5;
select_draw_y += (th_select_y[i]-select_draw_y)*.5;}
else{
select_draw_x = th_select_x[i];
select_draw_y = th_select_y[i];}}

draw_sprite(spr_th_selection_ui,th_selection_frame,select_draw_x,select_draw_y-8-button_bounce);
if customize_furn = 0{
if select_draw_y > -32{select_draw_y -= 1+(idis*.2);}}




draw_sprite(spr_treehouse_exit_sign,0,4,0);

draw_sprite(spr_treehouse_customize_on_off,customize_furn,room_width/2,room_height);



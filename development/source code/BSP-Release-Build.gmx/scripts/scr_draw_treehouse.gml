ix = (((g.pug_id[0].x+g.pug_id[1].x)/2)/room_width)*8;
iy = (((g.pug_id[0].y+g.pug_id[1].y)/2)/room_height)*4;

draw_sprite(spr_treehouse_fg,0,(-ix)-8,(-iy)-8);


scr_draw_th_selection();

ix = (((g.pug_id[0].x+g.pug_id[1].x)/2)/room_width)*8;
iy = (((g.pug_id[0].y+g.pug_id[1].y)/2)/room_height)*4;

draw_sprite(spr_treehouse_stars,g.anim*.25,ix,iy);
draw_sprite(spr_treehouse_bg,0,0,0);



moontime += 1;
if moontime >= 30*18{moontime = 0;}
i = (abs(moontime - (3*10))/48)+.25;
draw_sprite_ext(spr_treehouse_moonlight,0,0,0,1,1,0,c_white,i);
i = (abs(moontime - (9*10))/48)+.25;
draw_sprite_ext(spr_treehouse_moonlight,1,0,0,1,1,0,c_white,i);
i = (abs(moontime - (15*10))/48)+.25;
draw_sprite_ext(spr_treehouse_moonlight,2,0,0,1,1,0,c_white,i);






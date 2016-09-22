ix = (((g.pug_id[0].x+g.pug_id[1].x)/2)/room_width)*8;
iy = (((g.pug_id[0].y+g.pug_id[1].y)/2)/room_height)*4;

draw_sprite(spr_treehouse_stars,g.anim*.25,0,0);
draw_sprite(spr_treehouse_bg,0,0,0);



moontime += 1;
if moontime >= 30*18{moontime = 0;}
i = (abs(moontime - (3*10))/48)+.25;
draw_sprite_ext(spr_treehouse_moonlight,0,0,0,1,1,0,c_white,i);
i = (abs(moontime - (9*10))/48)+.25;
draw_sprite_ext(spr_treehouse_moonlight,1,0,0,1,1,0,c_white,i);
i = (abs(moontime - (15*10))/48)+.25;
draw_sprite_ext(spr_treehouse_moonlight,2,0,0,1,1,0,c_white,i);


if g.customize_furn > 0{
i = 0;
i2 = 0;
repeat(6){
i2 = 0;
if i = g.th_current_select_spot{i2 = g.anim*.2;}
draw_sprite(spr_treehouse_select,i2,g.th_select_x[i],g.th_select_y[i]);
i+=1;}
}

//draw current selected item
i = g.th_current_select_spot;
i2 = 1;
if g.th_furn_item[g.th_select_furn[i]] = g.th_furn_item[g.th_current_select_furn]{i2 = 0;}
if g.customize_furn > 0{
draw_sprite(g.th_furn_item[g.th_current_select_furn],i2,g.th_select_x[i],g.th_select_y[i]-3);}

//draw built items in their spots. unless spot selected
i = 0;
repeat(6){
if i != g.th_current_select_spot || g.customize_furn = 0{
draw_sprite(g.th_furn_item[g.th_select_furn[i]],0,g.th_select_x[i],g.th_select_y[i]-3);
}
i+=1;}



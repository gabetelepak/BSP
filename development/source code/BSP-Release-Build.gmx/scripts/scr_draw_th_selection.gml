

if instance_exists(g.pug_id[0]) && g.pug_id[0] > 0{
ix = floor((g.pug_id[0].x+16 - (32*g.pug_id[0].face))/32)*32;
if g.pug_id[0].treehouse_floor = 1{iy = 144;}else{iy = 96;}
draw_sprite(spr_treehouse_select,0,ix,iy);}






//temp grass texture
draw_sprite_tiled_ext(spr_grass_tile,0,0,0,1,1,c_white,1);

//room border
draw_set_color(c_black);
draw_rectangle(5,5,room_width-5,room_height-5,1);

//cut off line for hub
draw_line(5,g.hub_height,room_width-5,g.hub_height+1);
//hub left and right border
draw_line(960,5,960+1,g.hub_height);
draw_line(960+2400,5,960+1+2400,g.hub_height);

//biome splits
draw_line(1440,g.hub_height,1440+1,room_height-5);
draw_line(1440*2,g.hub_height,1440*2+1,room_height-5);


//draw modules
i = 0;
repeat(g.max_modules){
if g.module_size[i] = g.mod_width_large{draw_set_color(g.c_ltblue);}
if g.module_size[i] = g.mod_width_medium{draw_set_color(g.c_ltgreen);}
if g.module_size[i] = g.mod_width_small{draw_set_color(g.c_ltpurple);}
if g.module_x[i] > 0{
draw_set_alpha(.5);
draw_rectangle(g.module_x[i],g.module_y[i],g.module_x[i]+g.module_size[i],g.module_y[i]+g.module_size[i],0);
draw_set_alpha(1);
}
i+=1;}
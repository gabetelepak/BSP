/// @description Insert description here
// You can write your code in this editor

if path_get_length(path) > 4{
if path_position = 0{
path_start(path,1,path_action_stop,1);
path_speed = 3;} 

/*
if clear_path = 0{
clear_path = 1;
i = 0;
repeat(path_get_number(path)){
g.ix = path_get_x(path,i);
g.iy = path_get_y(path,i);
with obj_asset_parent{
if solid = true{
if distance_to_point(g.ix,g.iy) < 48{instance_destroy();}}}
i+=1;}
}
*/



//change dir
if oalarm <= 0{
oalarm = 24+irandom(36);
i = odir;
while abs(i-odir) <= 90 || odir = direction || odir = direction+180{
odir = irandom(24)*15;}
}else{oalarm -= 1;}

if path_position > .1 && path_position < .9{
ox += lengthdir_x(1,odir);
oy += lengthdir_y(1,odir);
ox = clamp(ox,-12,12);
oy = clamp(oy,-12,12);}
else{
ox = lerp(ox,0,.1);
oy = lerp(oy,0,.1);}





if surface_exists(g.world_grid_surf){
surface_set_target(g.world_grid_surf);
//draw_sprite(sprite_index,0,x,y);

draw_set_color(c_white);
draw_circle(x+ox,y+oy,22,0);



surface_reset_target();}


}//and if path


//destroy self when path is done.
if (g.generate_world_path >= 2 && path_get_length(path) <= 1) ||
path_position >= .99{instance_destroy();}





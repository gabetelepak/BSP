scr_init_park_ui();

//first thing when entering the park
mpgrid = mp_grid_create(-3,-3,ceil(room_width/6)+1,ceil(room_height/6)+1,6,6);

with obj_scenery_static_parent{
if solid == true{
mp_grid_add_instances(g.mpgrid,id,1);}}



//determine player total
player_total = 0;
with obj_player{
g.player_total += 1;}

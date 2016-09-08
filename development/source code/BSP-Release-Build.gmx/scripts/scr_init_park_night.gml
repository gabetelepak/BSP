
scr_init_park_ui();
scr_define_talkingheads();

//first thing when entering the park
mpgrid = mp_grid_create(-3,-3,ceil(room_width/6)+1,ceil(room_height/6)+1,6,6);

with obj_scenery_static_parent{
if solid == true{
mp_grid_add_instances(g.mpgrid,id,1);}}



//determine player total
player_total = 0;
with obj_player{
g.player_total += 1;}

//cam shake
shake = 0;
shakex = 0;
shakey = 0;

//game reset timer, for demos
reset_time = 30*60*3;//6min
idle_time = 0;
finished_time = 0;


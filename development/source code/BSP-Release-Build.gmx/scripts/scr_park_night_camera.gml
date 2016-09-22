// camera shake
if shake > 0{
shakex = random(shake*2)-shake;
shakey = random(shake*2)-shake;
shake -= .5;}


//follow players
ix = 0;
iy = 0;
player_total = 0;
with obj_player{
g.player_total += 1;
g.ix += x;
g.iy += y;}

ix = floor(ix/player_total)-floor(view_wview[0]/2) + g.vx_offset;
iy = floor(iy/player_total)-floor(view_hview[0]/2) + g.vy_offset;
g.pug_cam_x = clamp(ix,0,1000-view_wview[0]) + shakex;
g.pug_cam_y = clamp(iy,0,32) + shakey;


if g.game_phase = "park night" && park_night_intro = 0{
//view_xview[0] = clamp(view_xview[0],352,room_width-view_wview[0]) + shakex;
//view_yview[0] = clamp(view_yview[0],0,room_height-view_hview[0]) + shakey;
view_xview[0] = g.pug_cam_x;
view_yview[0] = g.pug_cam_y;

//view_xview[0] = 352 + shakex;
//view_yview[0] = 0 + shakey;
}

//clamp view
/*
if g.game_phase = "park night" && park_night_intro = 0{
view_xview[0] = 
view_yview[0] = }
*/

/*
if g.game_phase = "char select"{
view_xview[0] = clamp(view_xview[0],352,room_width-view_wview[0]) + shakex;
view_yview[0] = clamp(view_yview[0],296,room_height-view_hview[0]) + shakey;}
*/

vx = view_xview[0];
vy = view_yview[0];
vw = view_wview[0];
vh = view_hview[0];

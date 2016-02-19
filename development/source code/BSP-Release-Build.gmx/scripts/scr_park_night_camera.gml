//camera
if shake > 0{
shakex = random(shake*2)-shake;
shakey = random(shake*2)-shake;
shake -= .25;}

ix = 0;
iy = 0;
with obj_player{
g.ix += x;
g.iy += y;}


view_xview[0] = floor(ix/player_total)-floor(view_wview[0]/2);
view_yview[0] = floor(iy/player_total)-floor(view_hview[0]/2);

view_xview[0] = clamp(view_xview[0],0,room_width-view_wview[0]) + shakex;
//view_yview[0] = clamp(view_yview[0],0,room_height-view_hview[0]);
//lock camera for orbyt
view_yview[0] = 0 + shakey;


vx = view_xview[0];
vy = view_yview[0];
vw = view_wview[0];
vh = view_hview[0];

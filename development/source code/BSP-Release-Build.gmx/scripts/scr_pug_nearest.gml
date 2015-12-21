pug = 0;
g.oth = id;
g.i = 9999;
if instance_exists(obj_player){
with obj_player{
i = scr_dis(x,y,g.oth.x,g.oth.y);
if i < g.i{g.i = i;
g.oth.pug = id;}}}

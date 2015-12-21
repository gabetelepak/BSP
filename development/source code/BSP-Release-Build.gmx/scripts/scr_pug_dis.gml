
ipug = 0;
g.oth = id;
g.i = 9999;
if instance_exists(obj_player){
with obj_player{
//i = scr_dis(x,y,g.oth.x,g.oth.y);
i = distance_to_object(g.oth);
if i < g.i{g.i = i;
g.oth.ipug = id;}}}

if g.i <= argument0 && ipug > 0{
pug = ipug;
return ipug;}else{return 0;}


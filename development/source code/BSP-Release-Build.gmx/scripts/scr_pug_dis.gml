
ireturn = 0;

i13 = 0;
repeat(2){
inbound[i13] = 99999;
i14 = distance_to_object(g.pug_id[i13]);
if i14 <= argument0{
inbound[i13] = i14;}
i13+=1;}

//whoever is closest
if inbound[0] < 99999 || inbound[1] < 99999{

if inbound[0] <= inbound[1]{ireturn = g.pug_id[0];}else{ireturn = g.pug_id[1];}

if inbound[0] < 99999 && inbound[1] < 99999{
if g.pug_id[0].pug_action > 0{ireturn = g.pug_id[0];}
if g.pug_id[1].pug_action > 0{ireturn = g.pug_id[1];}

if g.pug_id[0].pug_action > 0 && g.pug_id[1].pug_action > 0{
if inbound[0] <= inbound[1]{ireturn = g.pug_id[0];}else{ireturn = g.pug_id[1];}
}
}
}

if ireturn > 0{pug = ireturn;}
return ireturn;

/*
ireturn = -1;
i = 0;
for (i = 0; i < instance_number(obj_player); i += 1){
tp[i] = instance_find(obj_player,i);
tpd[i] = distance_to_object(tp[i]);
tpn[i] = -1;
if tpd[i] <= argument0{tpn[i] = tpd[i];}
}




/*
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


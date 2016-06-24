with obj_wood_top{instance_destroy();}
with obj_wood_bottom{instance_destroy();}
with obj_wood_wall{instance_destroy();}
with obj_character{instance_destroy();}

//move player objs to the right pug
with obj_player{
x = g.char_startx[player_number];
y = g.char_starty[player_number];}

/*
opt0 = instance_create(g.char_startx[0],g.char_starty[0],obj_player);
opt0.player_number = 0;
opt1 = instance_create(g.char_startx[1],g.char_starty[1],obj_player);
opt1.player_number = 1;
*/





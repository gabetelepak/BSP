with obj_wood_top{instance_destroy();}
with obj_wood_bottom{instance_destroy();}
with obj_wood_wall{instance_destroy();}
with obj_character{instance_destroy();}
with obj_tut_sign_top{instance_destroy();}
with obj_tut_sign_bottom{instance_destroy();}

//move player objs to the right pug
if g.game_phase = 'tutorial'{
instance_create(0,0,obj_tut_sign_top);
instance_create(0,0,obj_tut_sign_bottom);
with obj_player{
x = g.char_startx[player_number];
y = g.char_starty[player_number];
scr_pug_create();
scr_pug_assign_sprites();}}



/*


*/





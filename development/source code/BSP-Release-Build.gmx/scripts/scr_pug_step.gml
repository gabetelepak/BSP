scr_depth();

pause = 0;
invisible = 0;

if g.ascend_treehouse > 0{
pause = 1;
invisible = 1;}


//handle controls

//get hurt
if hurt = 2 && sprite_index != spr_stung{
g.shake = 3;
sprite_index = spr_stung;
image_speed = .25;
image_index = 0;
pug_action = 8;
zspeed -= 4;
scr_sound(snd_pug_hurt,g.sfx_volume);

//drop non ui item
if item_ui = 0 && item_held != ""{
item_held = "";
spr_item = spr_blank;
opt = instance_create(x-face*6,y+3,item_obj);
opt.face = face;
opt.direction = direction;
opt.active = 1;
}
}
////////////////////



//general movement
if g.game_phase = 'tutorial' || g.game_phase = 'park night' || g.game_phase = 'treehouse'{
if g.park_night_intro = 0 && slide  = 0 && hurt = 0 && jump = 0 && pause = 0{
if pug_action <= 0 && (magic_mode = 0 || magic_mode = 2){
scr_pug_movement();}

if magic_mode = 0{
if item_held = ""{
scr_pug_sniff();}

if g.tut_power_hold = 0{
scr_handle_power_anim();}


scr_handle_item_holding();}

scr_handle_magic_mode();}}


//handle action timer
if pug_action > 0{
if sprite_index != spr_bugnet_use{speed = 0;}
else{speed = move_speed*.75;

if direction = 90 || direction = 270{
if face = -1{direction -= 45;}
else{direction += 45;}}

}
pug_action -= abs(image_speed);}
else{
hurt = 0;
pug_action = 0;
pug_action_proc = 0;}

//face dir and final collision check
if direction < 90 || direction > 270{face = -1;}
if direction > 90 && direction < 270{face = 1;}
if !place_free(x+hspeed,y+vspeed){speed = 0;}
if speed = 0{x = floor(x);y = floor(y);}

//handle pug slide
scr_pug_slide();

//z
zgrav = .05;
zbounce = 1;
z += zspeed;
if z > 0{zspeed -= zgrav;}
if zspeed > 0{
zspeed = zspeed * (1-zgrav);}
if zspeed <= 0 && z > 0{
zspeed = zspeed * (1+zgrav);}
if z <= .2{z = 0;
if zbouncable{
if zspeed < -.2{zspeed = -zspeed*.25;
zbounce = 1;}}
}

//stung
if hurt = 1{
if place_free(x+face*1,y){x += face*1;}
}


if room = rm_treehouse{

if jump_up_ladder = 0{
vspeed = 0;
if treehouse_floor = 1{y = 144;}else{y = 96;}
if sprite_index = spr_walk_up || sprite_index = spr_walk_down{
image_speed = 0;
sprite_index = spr_sit;}}

//jump up
if x > 192 && treehouse_floor = 1 && jump_up_ladder = 0{
path_start(path_jump_up, 3, path_action_stop, false);
jump_up_ladder = 1;}
//jump down
if x < 236-16 && treehouse_floor = 2 && jump_up_ladder = 0{
path_position = 1;
path_start(path_jump_down, 3, path_action_stop, false);
jump_up_ladder = -1;}
//end jump
if jump_up_ladder != 0{
if jump_up_ladder = 1{face = -1;}else{face = 1;}
jump = 1;
if path_position = 1{
if jump_up_ladder = 1{treehouse_floor = 2;}else{treehouse_floor = 1;}
jump_up_ladder = 0;
jump = 0;}}
}





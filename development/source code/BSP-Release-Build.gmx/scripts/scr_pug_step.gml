if created < 5{created += 1;}

if created = 4{scr_pug_assign_sprites();}

scr_depth();

pause = 0;
invisible = 0;

if g.ascend_treehouse > 0{
pause = 1;
invisible = 1;}



if g.customize_furn > 0 && player_number = 0{
speed = 0;
pause = 1;
direction = point_direction(x,y,g.select_draw_x,g.select_draw_y);}

//if g.talking_head_current_string != ''{
//pause = 1;}

if pause > 0{
if g.customize_furn > 0{
sprite_index = spr_good;
image_speed = .5;
pug_action = 0;
if image_index >= 8{image_speed = 0;}}}
else{
if sprite_index = spr_good{sprite_index = spr_sit;}
}

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
if pug_action <= 0 && (magic_mode = 0 || magic_mode = 2) && g.talking_head_current_string = ''{
scr_pug_movement();}

if magic_mode = 0 && room != rm_treehouse{
if item_held = "" && g.talking_head_current_string = ''{
scr_pug_sniff();}

if g.tut_power_hold = 0 && room != rm_treehouse{
scr_handle_power_anim();}

scr_handle_item_holding();}

scr_handle_magic_mode();}}


//handle action timer
if pug_action > 0{
if sprite_index != spr_bugnet_use{speed = 0;}

/*omitting bugnet use, movement forward
else{speed = move_speed*.75;

if direction = 90 || direction = 270{
if face = -1{direction -= 45;}
else{direction += 45;}}}
*/
pug_action -= abs(image_speed);
//last frame of action
if pug_action <= 0{
hurt = 0;
sprite_index = spr_sit;
image_speed = 0;
speed = 0;}
}else{
hurt = 0;
pug_action = 0;
pug_action_proc = 0;
if g.talking_head_current_string != ''{
speed = 0;
sprite_index = spr_sit;
image_speed = 0;}
}

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
if hurt > 0{
}


if room = rm_treehouse{

//while not jumping.
if jump_up_ladder = 0{
vspeed = 0;
if treehouse_floor = 1{y = 144;}else{y = 96;}}

//start jump up anim
if x > 192 && treehouse_floor = 1 && jump_up_ladder = 0{
sprite_index = spr_jump;
image_index = 0;
image_speed = .25;
jump_up_ladder = 1;}

//start jump down anim
if x < 236-16 && treehouse_floor = 2 && jump_up_ladder = 0{
path_position = 1;
sprite_index = spr_jump;
image_index = 0;
image_speed = .25;
jump_up_ladder = -1;
}

//actual leap.
if jump_up_ladder != 0 && path_index = -1 && floor(image_index) = 3{
if treehouse_floor = 1{
path_start(path_jump_up, 6, path_action_stop, false);}
else{
path_start(path_jump_down, 6, path_action_stop, false);}}




//while jumping
if jump_up_ladder != 0{
jump = 1;
speed = 0;
if jump_up_ladder = 1{face = -1;}else{face = 1;}

if path_index >= 0{
image_speed = 0;
image_index = 3 + floor(4*path_position);}

//end jump
if path_position = 1 && image_index > 3{
path_end();
path_position = 0;
image_index = 7;
image_speed = .25;}

if image_index >= 9{
if jump_up_ladder = 1{treehouse_floor = 2;}else{treehouse_floor = 1;}
jump = 0;
jump_up_ladder = 0;}


}}





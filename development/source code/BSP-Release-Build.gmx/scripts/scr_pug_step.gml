scr_depth();


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
if g.game_phase = 'tutorial' || g.game_phase = 'park night'{
if g.park_night_intro = 0 && slide  = 0 && hurt = 0{
if pug_action <= 0 && (magic_mode = 0 || magic_mode = 2){
scr_pug_movement();}

if magic_mode = 0{
if item_held = ""{
scr_pug_sniff();}
scr_handle_power_anim();
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









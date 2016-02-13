scr_depth();


//handle controls


if hurt = 2 && sprite_index != spr_stung{
sprite_index = spr_stung;
image_speed = .25;
image_index = 0;
pug_action = 8;
zspeed -= 4;
scr_sound(snd_pug_hurt,g.sfx_volume);}





if g.park_night_intro = 0 && slide  = 0 && hurt = 0{
if pug_action <= 0 && (magic_mode = 0 || magic_mode = 2){
scr_pug_movement();}

if magic_mode = 0{
if item_held = ""{
scr_pug_sniff();}
scr_handle_power_anim();
scr_handle_item_holding();}

scr_handle_magic_mode();}


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
visible = 1;
if slide > 0{
slide += .25;
if slide < 9{
visible = 0;
y = obj_slide.y+8;
x = obj_slide.x+2+10*6;}
if slide >= 9{

direction = point_direction(x,y,obj_tree_left.x,obj_tree_left.y);
scr_dust(x,y,direction+180,1);
sprite_index = spr_scoot;
image_index = 0;
speed = 3;
face = -1;
//slide = 0;
visible = 1;
if scr_dis(x,y,obj_tree_left.x,obj_tree_left.y) <= 26{
slide = 0;
obj_tree_left.drop_frisbee = 2;
hurt = 2;}
}}/////////////

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









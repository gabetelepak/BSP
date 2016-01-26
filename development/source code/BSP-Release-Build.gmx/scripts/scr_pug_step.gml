scr_depth();

//handle controls

if pug_action <= 0 && (magic_mode = 0 || magic_mode = 2){
scr_pug_movement();}

if magic_mode = 0{
if item_held = ""{
scr_pug_sniff();}
scr_handle_power_anim();
scr_handle_item_holding();}

scr_handle_magic_mode();


//handle action timer
if pug_action > 0{
if sprite_index != g.spr_bugnet_use[player_number]{speed = 0;}
else{speed = move_speed*.75;

if direction = 90 || direction = 270{
if face = -1{direction -= 45;}
else{direction += 45;}}

}
pug_action -= abs(image_speed);}
else{
pug_action = 0;
pug_action_proc = 0;}

//face dir and final collision check
if direction < 90 || direction > 270{face = -1;}
if direction > 90 && direction < 270{face = 1;}
if !place_free(x+hspeed,y+vspeed){speed = 0;}
if speed = 0{x = floor(x);y = floor(y);}



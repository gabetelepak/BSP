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
speed = 0;
pug_action -= abs(image_speed);}
else{
pug_action = 0;
pug_action_proc = 0;}



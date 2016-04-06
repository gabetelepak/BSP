
//init action
//temp disable mm so we can use X for powers
//if g.button[player_number,g.button_X]{
mm_disabled = 1;
if mm_disabled = 0{
g.magic_mode_alert = 0;

//turn on
if pug_action <= 0 && magic_mode = 0{
speed = 0;
sprite_index = spr_transform;
image_speed = .25;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(snd_mm_open,g.sfx_volume);
magic_mode = 1;
magic_mode_y = 0;

build_x = (floor((x)/12)*12)+6;
build_y = (floor((y-12)/12)*12);

//drop item
if item_held != ""{
if item_obj >= 0{
opt = instance_create(x,y+3,item_obj);
opt.face = face;
item_held = "";
spr_item = spr_blank;
pug_power = 0;
scr_switch_power();}}


}

//turn off
if pug_action <= 0 && magic_mode = 2{
speed = 0;
sprite_index = spr_transform;
image_speed = -.5;
image_index = 0;
pug_action = sprite_get_number(sprite_index);
scr_sound(snd_mm_close,g.sfx_volume);
magic_mode = 3;
magic_mode_y = 52;}
}

if pug_action <= 0 && sprite_index = spr_transform{
pug_action = 0;
image_index = 0;
if magic_mode = 1{magic_mode = 2;magic_mode_y = 52;
if !instance_exists(obj_magic_mode){
opt = instance_create(build_x,build_y,obj_magic_mode);
opt.master = id;}}
if magic_mode = 3{magic_mode = 0;magic_mode_y = 0;
if instance_exists(obj_magic_mode){g.otherobj = id;
with obj_magic_mode{if master = g.otherobj{instance_destroy();}}}}}

if (magic_mode = 1 || magic_mode = 2) && magic_mode_y < 52{
magic_mode_y += 52/14/4;}

if (magic_mode = 3 || magic_mode = 0) && magic_mode_y > 0{
magic_mode_y -= 52/14/2;}


if magic_mode = 2{
sprite_index = spr_hover;
image_speed = .25;

build_x = (floor((x)/12)*12)+6;
build_y = (floor((y-12)/12)*12);


//magic mode clear check
g.otherobj = id;
if instance_exists(obj_magic_mode){with obj_magic_mode{
if master = g.otherobj{

x = g.otherobj.build_x;
y = g.otherobj.build_y;

if place_free(x,y){
g.otherobj.magic_mode_clear = 1;}else{
g.otherobj.magic_mode_clear = 0;}


}}}}



if g.button[player_number,g.button_DLEFT] && g.press_delay[player_number] = 0{
scr_sound(snd_mm_switch,g.sfx_volume);
g.press_delay[player_number] = 15;
i = build_icon_count;
build_icon[0] = build_icon[i];
build_obj[0] = build_obj[i]
repeat(build_icon_count){
build_icon[i] = build_icon[i-1];
build_obj[i] = build_obj[i-1]
i-=1;}
}

if g.button[player_number,g.button_DRIGHT] && g.press_delay[player_number] = 0{
scr_sound(snd_mm_switch,g.sfx_volume);
g.press_delay[player_number] = 15;
i = 0;
repeat(build_icon_count){
build_icon[i] = build_icon[i+1];
build_obj[i] = build_obj[i+1]
i+=1;}
build_icon[i] = build_icon[0];
build_obj[i] = build_obj[0]}

if magic_mode_clear = 1{
if g.button[player_number,g.button_DDOWN] && g.press_delay[player_number] = 0{
g.press_delay[player_number] = 15;
if build_obj[2] > 0{
scr_sound(snd_mm_place,g.sfx_volume);
instance_create(build_x,build_y,build_obj[2]);}}}

if magic_mode_clear != 1{
if g.button[player_number,g.button_DDOWN] && g.press_delay[player_number] = 0{
scr_sound(snd_mm_cant_place,g.sfx_volume);}}









if keyboard_check(vk_control) && 
keyboard_check(vk_enter){
game_restart();}

if keyboard_check_pressed(vk_numpad0){
if background_visible[7] = 1{background_visible[7] = 0;}
else{background_visible[7] = 1;}}

if keyboard_check(vk_shift) && 
keyboard_check(vk_enter){
park_night_intro = 1;
scr_init_park_night();
room_goto(rm_park_night);
game_phase = 'park night';
g.tut_power_hold = 0;

}



if mouse_check_button_pressed(mb_middle){
//scr_dust(mouse_x,mouse_y,180,3);
//opt = instance_create(mouse_x,mouse_y,obj_hint);
//opt.spr_hint = spr_hint_sandwich;
}

 /// @description Insert description here
// Y ou can write your code in this editor

origin_x = x + origin_offset_x;
origin_y = y + origin_offset_y;
depth = room_height-origin_y;

scr_player_movement();

/*
if device_mouse_check_button(0,mb_left){
x = mouse_x;
y = mouse_y;}
*/

//draw shadow
//draw player shadow
if surface_exists(g.surf_shadow){
var ix = 2;
if sprite_index = g.spr_walk_up[player_num] ||
sprite_index = g.spr_walk_down[player_num]{ix = 0;}
surface_set_target(g.surf_shadow);
draw_sprite_ext(spr_sammy_shadow,image_single,x-g.camera_x,y+ix-g.camera_y,1,1,0,c_black,1);
surface_reset_target();
}///////////////




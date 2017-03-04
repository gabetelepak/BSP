/// @description Insert description here
// You can write your code in this editor

//update depth
origin_x = x + origin_offset_x;
origin_y = y + origin_offset_y;
depth = room_height-origin_y;


//update shadow.
shadow_x = x + shadow_offset_x;
shadow_y = y + shadow_offset_y;






//draw shadow
if generated = 0 || generated = 3{
if shadow_sprite != spr_blank{
if surface_exists(g.surf_shadow){
surface_set_target(g.surf_shadow);
draw_sprite_ext(shadow_sprite,image_single,shadow_x-floor(g.camera_x),shadow_y-floor(g.camera_y),1,1,0,c_black,1);
surface_reset_target();
}}}///////////////



if generated = 2{
x -= origin_offset_x;
y -= origin_offset_y;
generated = 3;}


if alpha < 1{
alpha += 1/5;}
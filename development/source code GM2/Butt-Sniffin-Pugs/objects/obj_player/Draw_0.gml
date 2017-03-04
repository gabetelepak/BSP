/// @description Insert description here
// You can write your code in this editor


draw_sprite_ext(sprite_index,image_index,x,y,1*face,1,0,c_white,1);

if surface_exists(g.surf_shadow){
surface_set_target(g.surf_shadow);
draw_sprite_ext(spr_sammy_shadow,image_single,x-g.camera_x,y-g.camera_y,1,1,0,c_black,1);
surface_reset_target();
}///////////////
/// @description Insert description here
// You can write your code in this editor

var ix = 24;
var iy = 48;


surface_set_target(spr_base);

draw_sprite(spr_base_left_ear_stand,0,ix,iy);
draw_sprite(spr_base_left_front_leg_stand,0,ix,iy);
draw_sprite(spr_base_left_hind_leg_stand,0,ix,iy);

draw_sprite(spr_base_body_stand,0,ix,iy);
draw_sprite(spr_base_face_stand,0,ix,iy);

draw_sprite(spr_base_right_ear_stand,0,ix,iy);
draw_sprite(spr_base_right_front_leg_stand,0,ix,iy);
draw_sprite(spr_base_right_hind_leg_stand,0,ix,iy);

draw_sprite(spr_base_tail_stand,0,ix,iy);

surface_reset_target();


surface_set_target(spr_base_outline);
shader_set(shader_0);
draw_surface(spr_base,1,0);
draw_surface(spr_base,-1,0);
draw_surface(spr_base,0,1);
draw_surface(spr_base,0,-1);
shader_reset();
surface_reset_target();



/// @description Insert description here
// You can write your code in this editor

//handle origin, calculate depth
origin_offset_x = floor(sprite_width/2);
origin_offset_y = sprite_height;
origin_x = 0;
origin_y = 0;

//handle shadow
shadow_sprite = spr_blank;
shadow_offset_x = x;
shadow_offset_y = y;
shadow_x = 0;
shadow_y = 0;


//draw variables
scale = 1;
color = c_white;
rot = 0;
alpha = -1;
generated = 0;
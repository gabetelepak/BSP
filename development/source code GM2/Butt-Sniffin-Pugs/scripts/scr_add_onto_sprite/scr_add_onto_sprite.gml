temp_surf = surface_create(73,73);
temp_index = 0;




var temp_sprite = argument0;
var mid_sprite = argument1;
var mid_frames = sprite_get_number(argument1);

ix = sprite_get_xoffset(mid_sprite);
iy = sprite_get_yoffset(mid_sprite);

repeat(mid_frames){
surface_set_target(temp_surf);
draw_clear_alpha(c_white,0);
draw_sprite(argument1,temp_index,ix,iy);

surface_reset_target();

sprite_add_from_surface(temp_sprite,temp_surf,0,0,73,73,0,0);
temp_index += 1;}

surface_free(temp_surf);
return temp_sprite;
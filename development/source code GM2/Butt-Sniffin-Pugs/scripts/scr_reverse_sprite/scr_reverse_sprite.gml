var temp_surf = surface_create(73,73);
var temp_index = 0;




var temp_sprite = -1;
var mid_frames = sprite_get_number(argument0);

var ix = sprite_get_xoffset(argument0);
var iy = sprite_get_yoffset(argument0);

temp_index = mid_frames-1;
repeat(mid_frames){
surface_set_target(temp_surf);
draw_clear_alpha(c_white,0);
draw_sprite(argument0,temp_index,ix,iy);
surface_reset_target();

if mid_frames-1 = temp_index{
temp_sprite = sprite_create_from_surface(temp_surf,0,0,73,73,0,0,ix,iy);}else{
sprite_add_from_surface(temp_sprite,temp_surf,0,0,73,73,0,0);}
temp_index -= 1;}



surface_free(temp_surf);
return temp_sprite;
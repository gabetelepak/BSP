temp_surf = surface_create(73,73);
temp_index = 0;
ix = 0;
iy = 0;

sprite_index = argument0[0];
var anim_frames = sprite_get_number(sprite_index);

repeat(anim_frames){
surface_set_target(temp_surf);
draw_clear_alpha(c_white,0);
draw_sprite(argument0[0],temp_index,ix,iy);
draw_sprite(argument0[1],temp_index,ix,iy);
draw_sprite(argument0[2],temp_index,ix,iy);
draw_sprite(argument0[3],temp_index,ix,iy);
draw_sprite(argument0[4],temp_index,ix,iy);
draw_sprite(argument0[5],temp_index,ix,iy);
draw_sprite(argument0[6],temp_index,ix,iy);
surface_reset_target();

if temp_index = 0{
temp_sprite = sprite_create_from_surface(temp_surf,0,0,73,73,0,0,36,51);}else{
sprite_add_from_surface(temp_sprite,temp_surf,0,0,73,73,0,0);}
temp_index += 1;}

surface_free(temp_surf);
return temp_sprite;
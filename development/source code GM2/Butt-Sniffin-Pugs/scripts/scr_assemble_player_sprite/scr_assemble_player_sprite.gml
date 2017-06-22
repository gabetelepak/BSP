temp_surf = surface_create(73,73);
temp_index = 0;
ix = 0;
iy = 0;

sprite_index = argument0[0];
var anim_frames = sprite_get_number(sprite_index);

repeat(anim_frames){
surface_set_target(temp_surf);
draw_clear_alpha(c_white,0);
shader_set(shd_color_change);
draw_sprite(argument0[0],temp_index,ix,iy);
draw_sprite(argument0[1],temp_index,ix,iy);
draw_sprite(argument0[2],temp_index,ix,iy);
draw_sprite(argument0[3],temp_index,ix,iy);
draw_sprite(argument0[4],temp_index,ix,iy);
draw_sprite(argument0[5],temp_index,ix,iy);
draw_sprite(argument0[6],temp_index,ix,iy);
shader_reset();
surface_reset_target();

//repeat color changer shader for each color.
surface_set_target(test_color_surf[0]);
draw_clear_alpha(c_white,0);
draw_surface_ext(temp_surf,0,0,1,1,0,c_white,1);
surface_reset_target();

surface_set_target(test_color_surf[1]);
draw_clear_alpha(c_white,0);
draw_surface_ext(temp_surf,0,0,1,1,0,c_white,1);
surface_reset_target();

i = 0;
color_change_switch = 0;
repeat(max(1,max_colors+1)){

if color_change_switch = 0{
color_change_swicth = 1;
i2 = 1; i3 = 0;}
else{
color_change_switch = 0;
i2 = 0; i3 = 1;}

surface_set_target(test_color_surf[i2]);
shader_set(shd_color_change);
    shader_set_uniform_color(hnd_colorIn, colorIn[i], 1.0);
    shader_set_uniform_color(hnd_colorOut, colorOut[i], 1.0);
    shader_set_uniform_f(hnd_colorTolerance, 0.0, 0.0, 0.0, 0.0);
    shader_set_uniform_f(hnd_blend, 1.0);
draw_surface_ext(test_color_surf[i3],0,0,1,1,0,c_white,1);
shader_reset();
surface_reset_target();
i+=1;}

surface_set_target(test_color_surf[i2]);
draw_clear_alpha(c_white,0);
draw_surface_ext(temp_surf,0,0,1,1,0,c_white,1);
surface_reset_target();


if temp_index = 0{
temp_sprite = sprite_create_from_surface(temp_surf,0,0,73,73,0,0,36,51);}else{
sprite_add_from_surface(temp_sprite,temp_surf,0,0,73,73,0,0);}
temp_index += 1;}

surface_free(temp_surf);
return temp_sprite;
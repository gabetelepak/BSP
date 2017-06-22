 /// @description Insert description here
// You can write your code in this editor
event_inherited();  

//player controlled movement
scr_player_movement();
scr_player_controls();


//lose interaction target if it disapears.
if interaction_target > 0{
if !instance_exists(interaction_target){interaction_target = 0;}}



/*
i = 0;
if !surface_exists(test_color_surf[0]){
test_color_surf[0] = surface_create(73,73);}
if !surface_exists(test_color_surf[1]){
test_color_surf[1] = surface_create(73,73);}


surface_set_target(test_color_surf[0]);
draw_clear_alpha(c_white,1);
draw_sprite_ext(sprite_index,image_index,36,48,1*face,1,0,c_white,1);
surface_reset_target();

i = 0;
surface_set_target(test_color_surf[1]);
shader_set(shd_color_change);
    shader_set_uniform_color(hnd_colorIn, colorIn[i], 1.0);
    shader_set_uniform_color(hnd_colorOut, colorOut[i], 1.0);
    shader_set_uniform_f(hnd_colorTolerance, 0.0, 0.0, 0.0, 0.0);
    shader_set_uniform_f(hnd_blend, 0.0);
draw_surface(test_color_surf[0],0,0);
shader_reset();
surface_reset_target();

i = 4;
surface_set_target(test_color_surf[0]);
shader_set(shd_color_change);
    shader_set_uniform_color(hnd_colorIn, colorIn[i], 1.0);
    shader_set_uniform_color(hnd_colorOut, colorOut[i], 1.0);
    shader_set_uniform_f(hnd_colorTolerance, 0.0, 0.0, 0.0, 0.0);
    shader_set_uniform_f(hnd_blend, 0.0);
draw_surface(test_color_surf[1],0,0);
shader_reset();
surface_reset_target();



i = 0;
//repeat(max(1,1)){
//surface_set_target(test_color_surf);
/*
shader_set(shd_color_change);
    shader_set_uniform_color(hnd_colorIn, colorIn[i], 1.0);
    shader_set_uniform_color(hnd_colorOut, colorOut[i], 1.0);
    shader_set_uniform_f(hnd_colorTolerance, 0.0, 0.0, 0.0, 0.0);
    shader_set_uniform_f(hnd_blend, 0.0);
*/
//draw_surface(test_color_surf,0,0);
//shader_reset();
//surface_reset_target();
//i+=1;}
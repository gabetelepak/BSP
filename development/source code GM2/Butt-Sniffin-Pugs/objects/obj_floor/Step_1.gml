/// @description Insert description here
// You can write your code in this editor


if !surface_exists(g.surf_shadow){
g.surf_shadow = surface_create(g.camera_width,g.camera_height);
}

/*
if surface_exists(g.surf_shadow){
surface_set_target(g.surf_shadow); 
draw_clear_alpha(c_black,0);
surface_reset_target();
}
*/
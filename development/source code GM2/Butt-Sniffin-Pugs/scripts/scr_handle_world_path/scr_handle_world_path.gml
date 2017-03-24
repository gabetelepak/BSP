if keyboard_check_pressed(ord("3")){
generate_world_path = 1;
scr_update_world_path();
g.generate_world_path = 2;}

if g.generate_world_path = 2 && instance_number(obj_path_point) <= 0{
buffer_get_surface(world_grid_buffer,world_grid_surf,0,0,0);
g.generate_world_path = 3;}
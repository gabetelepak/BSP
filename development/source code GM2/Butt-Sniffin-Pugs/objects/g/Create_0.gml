 /// @description Insert description here
// You can write your code in this editor
scr_define_camera();
//debug_surface = surface_create(10,10);

//testing
random_set_seed(current_time);
test_str = "";

scr_define_colors();
scr_define_controls();

scr_define_mod_gen();
scr_define_module_db_grid();
scr_define_world_path();


scr_define_silhouette();
scr_define_pug_sprites();
scr_define_inventory();

player_object[1] = 0;
player_object[2] = 0;

paused = 0;

//for shadows.
surf_shadow = surface_create(g.camera_width,g.camera_height);
tile_deepen = 1;  
scr_tile_deepen("terrain_elevated_tiles",24,24,room_height);

generate_world_path = 0;
world_grid = mp_grid_create(0,0,floor(room_width/48),floor(room_height/48),48,48);
world_grid_surf = surface_create(4320,3120);
world_grid_buffer = buffer_create(4320*3120*4,buffer_fixed,1);
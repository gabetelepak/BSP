
modules_loaded = 0;
module_room_max = 0;


var i = 0;
module_room_name[i] = "test";
module_room_grid[i] = ds_grid_create(480/12,480/12);
module_room_id[i] = rm_mod_test;
i+=1;
module_room_name[i] = "test2";
module_room_grid[i] = ds_grid_create(480/12,480/12);
module_room_id[i] = rm_mod_test2;



module_room_max = i;
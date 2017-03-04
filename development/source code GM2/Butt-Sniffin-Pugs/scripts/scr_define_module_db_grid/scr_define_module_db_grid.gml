
modules_loaded = 0;
module_room_max = 0;


i = 0;
module_room_name[i] = "test3";
module_room_id[i] = rm_mod_test3;
module_room_size[i] = mod_width_medium;
i+=1;
module_room_name[i] = "test4";
module_room_id[i] = rm_mod_test4;
module_room_size[i] = mod_width_small;
i+=1;
module_room_name[i] = "test5";
module_room_id[i] = rm_mod_test5;
module_room_size[i] = mod_width_small;
i+=1;
module_room_name[i] = "test6";
module_room_id[i] = rm_mod_test6;
module_room_size[i] = mod_width_medium;



module_room_max = i;

//setup default vars.
i = 0;
repeat(module_room_max+1){
module_room_grid[i] = ds_grid_create(576/12,576/12);
module_room_placed[i] = 0;//how many times placed
i+=1;}


i = 0;
filler_obj[i] = obj_m_bush_1;
filler_amount[i] = 40;
filler_loop[i] = 0;
filler_amount_cur[i] = 0;
i+=1;
filler_obj[i] = obj_m_bush_2;
filler_amount[i] = 30;
filler_loop[i] = 0;
filler_amount_cur[i] = 0;
i+=1;
filler_obj[i] = obj_s_bush_1;
filler_amount[i] = 20;
filler_loop[i] = 0;
filler_amount_cur[i] = 0;
i+=1;
filler_obj[i] = obj_s_bush_2;
filler_amount[i] = 20;
filler_loop[i] = 0;
filler_amount_cur[i] = 0;
i+=1;
filler_obj[i] = obj_m_tree_1;
filler_amount[i] = 40;
filler_loop[i] = 0;
filler_amount_cur[i] = 0;
i+=1;
filler_obj[i] = obj_s_tree_1;
filler_amount[i] = 30;
filler_loop[i] = 0;
filler_amount_cur[i] = 0;
filler_obj[i] = obj_grass_1;
filler_amount[i] = 120;
filler_loop[i] = 0;
filler_amount_cur[i] = 0;


filler_obj_max = i;
filler_obj_cur = 0;
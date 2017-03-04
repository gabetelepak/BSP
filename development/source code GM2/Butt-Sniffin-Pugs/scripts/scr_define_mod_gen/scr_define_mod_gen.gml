
/*
world = 4320 x 2160
hub = 2400 x 720
biome = 1440 x 1920
old
world = 3600 x 3600
hub = 2400 x 720
biome = 1104 x 2880
*/
//hmm

module_populate_success = 0;
filler_populate_success = 0;

mod_width_large = 480; // 10
mod_width_medium = 288; // 6
mod_width_small = 192; // 4

hub_height = 720;
max_modules = 100;

i = 0;//biome number
max_modules_large[i] = 1;
max_modules_medium[i] = 6;
max_modules_small[i] = 6;

i = 0;
repeat(max_modules){
module_name[i] = "";
module_x[i] = 0;
module_y[i] = 0;
module_size[i] = 0;
i+=1;}














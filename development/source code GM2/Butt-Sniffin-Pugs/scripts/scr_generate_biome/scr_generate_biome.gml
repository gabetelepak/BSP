

cur_module = 0;//which module is being generated
biome = 0;//biome number
cur_modules_large[biome] = 0;
cur_modules_medium[biome] = 0;
cur_modules_small[biome] = 0;


i = 0;
repeat(max_modules){
module_name[i] = "";
module_x[i] = 0;
module_y[i] = 0;
module_size[i] = 0;
i+=1;}



//handle large modules

i = cur_module;
module_name[i] = "temp";
module_x[i] = 1440 - 480;
module_y[i] = 720;
module_size[i] = mod_width_large;
cur_module +=1;



/* omited tree house modules will be manually placed
repeat(max_modules_large[biome]){
i = cur_module;

temp_module_x = 0;
temp_module_y = 0;
while scr_module_overlap(temp_module_x,temp_module_y,mod_width_large){
temp_module_x = (1+irandom(((1440-mod_width_large)/48)-1))*48;
temp_module_y = (1+hub_height) + irandom(((1440-mod_width_large)/48)-1)*48;}

module_name[i] = "temp";
module_x[i] = temp_module_x;
module_y[i] = temp_module_y;
module_size[i] = mod_width_large;
cur_module +=1;}
*/


//handle medium modules
repeat(max_modules_medium[biome]){
i = cur_module;

temp_module_x = 0;
temp_module_y = 0;
while scr_module_overlap(temp_module_x,temp_module_y,mod_width_medium){
temp_module_x = (1+irandom(((1440-mod_width_medium)/48)-1))*48;
temp_module_y = (1+hub_height) + irandom(((2400-mod_width_medium)/48)-1)*48;}

module_name[i] = "temp";
module_x[i] = temp_module_x;
module_y[i] = temp_module_y;
module_size[i] = mod_width_medium;
cur_module +=1;}



//handle small modules
repeat(max_modules_small[biome]){
i = cur_module;

temp_module_x = 0;
temp_module_y = 0;
while scr_module_overlap(temp_module_x,temp_module_y,mod_width_small){
temp_module_x = (1+irandom(((1440-mod_width_small)/48)-1))*48;
temp_module_y = (1+hub_height) + irandom(((2400-mod_width_small)/48)-1)*48;}

module_name[i] = "temp";
module_x[i] = temp_module_x;
module_y[i] = temp_module_y;
module_size[i] = mod_width_small;
cur_module +=1;}













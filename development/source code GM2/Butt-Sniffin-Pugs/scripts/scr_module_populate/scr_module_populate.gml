

i = 0;
repeat(max_modules){
if module_name[i] != ""{
if module_size[i] = mod_width_medium{
//module_x[i] = 0;
//module_y[i] = 0;

ix = 0;
iy = 0;

repeat(1600){

inst = ds_grid_get(module_room_grid[0],ix,iy);
if inst > 0{instance_create_depth(module_x[i]+ix*12,module_y[i]+iy*12,0,inst);}


ix += 1;
if ix > 40{ix = 0;iy+=1;}
}



}}
i+=1;}


i = 0;
repeat(max_modules){
if module_name[i] != ""{
if module_size[i] != mod_width_large{


//select a module from the room pool.
i2 = 0;
module_room_number = -1;
repeat(100*module_room_max){
if module_room_number = -1{
i2 = irandom(module_room_max);
if module_size[i] = module_room_size[i2]{
module_room_placed[i2] += 1;
module_room_number = i2;}}}



//generate
if module_room_number >= 0{
ix = 0;
iy = 0;
repeat(2304){
inst = ds_grid_get(module_room_grid[module_room_number],ix,iy);
if inst > 0{
opt = instance_create_depth(module_x[i]-48+ix*12,module_y[i]-48+iy*12,9999,inst);
opt.module_id = module_room_number;

}
ix += 1;
if ix > 40{ix = 0;iy+=1;}}
}


}}
i+=1;}
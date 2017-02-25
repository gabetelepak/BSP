
if modules_loaded <= module_room_max{


//start cycling rooms
if room = rm_start{
room_grid_cur = 0;
room_goto(module_room_id[room_grid_cur]);}

var i = 0;
repeat(module_room_max+1){

if modules_loaded = i{

//go to the module room if not there
if room_exists(module_room_id[i]){
room_goto(module_room_id[i]);}

//write all objects to the grid.
if room = module_room_id[i]{
var i2;
var inst = -1;
for (i2 = 0; i2 < instance_number(all); i2 += 1)
   {
   inst = instance_find(all,i2);
   if instance_exists(inst){
   ds_grid_set(module_room_grid[i],floor(inst.x/12),floor(inst.y/12),inst.object_index);
   }
   
   }
test_str += string(room_get_name(room))+ ":"+string(instance_number(all))+" loaded\n";
modules_loaded += 1;}




}
i+=1;}






}


//go to the park when finished.
if modules_loaded = module_room_max+1{
room_goto(rm_park_test);
modules_loaded += 1;}




/*
i = 0;
repeat(module_room_max){
if room_exists(module_room_id[i]){
room_goto(rm_mod_test);


var i2;
var inst = -1;
for (i2 = 0; i2 < instance_number(all); i2 += 1)
   {
   inst = instance_find(all,i2);
   if instance_exists(inst){
   ds_grid_set(module_room_grid[i],inst.x,inst.y,inst.object_index);
   //test_str += string(inst.object_index)+" - ";
   }
   
   }


}
test_str += string(room_get_name(room))+":"+string(instance_number(all))+" \n ";
i+=1;}
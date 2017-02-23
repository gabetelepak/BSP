i = 0;
repeat(module_room_max){
if room_exists(module_room_id[i]){
room_goto(module_room_id[i]);

var i2;
var inst = -1;
for (i2 = 0; i2 < instance_number(all); i2 += 1)
   {
   inst = instance_find(all,i2);
   if instance_exists(inst){
   ds_grid_set(module_room_grid[i],inst.x,inst.y,inst.object_index);}
   
   }


}
i+=1;}
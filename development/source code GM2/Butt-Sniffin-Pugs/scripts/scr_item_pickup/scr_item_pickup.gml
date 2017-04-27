var success = 0;

i = 0;
repeat(15){
if success = 0{
if g.inv_slot_name[i] = name{
g.inv_slot_qt[i] += 1;
success = 1;}}
i += 1;}

if success = 0{
i = 0;
repeat(15){
if success = 0{
if g.inv_slot_name[i] = ""{
g.inv_slot_name[i] = name;
g.inv_slot_qt[i] = 1;
g.inv_slot_sprite[i] = sprite_index;
success = 1;}}
i += 1;}}


if success = 1{
instance_destroy();}
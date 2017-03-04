


ireturn = false;
var i13 = 0;

repeat(filler_obj_max+1){
with filler_obj[i13]{
if distance_to_object(other.opt) <= 48{
other.ireturn = true;}}
i13 += 1;}

return ireturn;